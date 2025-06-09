import 'package:bloc_test/services/home/doman/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasource/login_repo_source.dart';

@Singleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository{
  LoginRepoSource source;
  LoginRepositoryImpl(this.source);

  @override
  Future<bool> login(String email, String password) async {
    await source.login(email, password);
    return true;
  }
}