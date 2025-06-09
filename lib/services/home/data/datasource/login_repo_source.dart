import 'package:injectable/injectable.dart';

import '../../../../network/call_request.dart';

abstract class LoginRepoSource {
  Future<bool> login(String email, String password);
}

@LazySingleton(as: LoginRepoSource)
class LoginRepoSourceImpl extends RequestCall implements LoginRepoSource {
  LoginRepoSourceImpl(super.dio);

  @override
  Future<bool> login(String email, String password) async {
    final result = await callRequest(request: (dio) =>
        dio.post("/login", data: {"email":email, "password": password}),
        onResponse: (data){
            return data;
        });
    return result!=null;
  }

}
