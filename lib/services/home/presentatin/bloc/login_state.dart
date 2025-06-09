
class LoginState{}

class LoginInitial extends LoginState{}
class LoginLoading extends LoginState{}
class LoginSuccess extends LoginState {
  final bool success;
  LoginSuccess(this.success);
}
class LoginError extends LoginState {
  final String error;
  LoginError(this.error);
}