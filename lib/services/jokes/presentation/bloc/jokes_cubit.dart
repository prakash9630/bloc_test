import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../di/getit_confit.dart';
import '../../doman/usecase/jokes_usecase.dart';
import 'jokes_state.dart';

@injectable
class JokesCubit extends Cubit<JokesState> {
  JokesCubit() : super(JokesInitial());

  Future<void> getJoke() async {
    emit(JokesLoading());
    try {
      final joke = await getIt<JokesUseCase>().call();
      emit(JokesSuccess(joke));
    } catch (e) {
      emit(JokesError(e.toString()));
    }
  }

}