import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'login_event.dart';
import 'login_state.dart';
import '../../doman/usecase/login_usecase.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc(this.loginUseCase) : super(LoginInitial()) {
    on<LoginFetchEvent>((event, emit) async{
      emit(LoginLoading());
      final result = await loginUseCase.call(event.email, event.password);
      if (result) {
        emit(LoginSuccess(true));
      } else {
        emit(LoginError("error"));
      }
    });
  }
}

