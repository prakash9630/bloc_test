import 'package:bloc_test/services/home/doman/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoginUseCase {
  final LoginRepository repository;
  LoginUseCase(this.repository);
  Future<bool> call(String email,String password) async {
    return repository.login(email, password);
  }
}
