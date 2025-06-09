
class LoginEvent {}


class LoginFetchEvent extends LoginEvent {
  final String email;
  final String password;
  LoginFetchEvent(this.email, this.password);
}

