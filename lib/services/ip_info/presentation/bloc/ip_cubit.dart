import 'package:bloc_test/services/ip_info/doman/usecase/ip_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'ip_state.dart';

@injectable
class IpCubit extends Cubit<IpState> {
  IpUseCase useCase;
  IpCubit(this.useCase) : super(const IpState.initial());

  Future<void> getIp() async {
    try {
      emit(const IpState.loading());
      final result = await useCase.call();
      emit(IpState.success(result));
    } catch (e) {
      emit(IpState.error(e.toString()));
    }
  }
}
