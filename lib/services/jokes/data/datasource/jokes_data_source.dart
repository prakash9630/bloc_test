
import 'package:bloc_test/network/call_request.dart';
import 'package:bloc_test/services/jokes/data/model/jokes_model.dart';
import 'package:injectable/injectable.dart';

abstract class JokesDataSource {
  Future<JokesModel> getJoke();
}

@Singleton(as: JokesDataSource)
class JokesDataSourceImpl extends RequestCall implements JokesDataSource {
  JokesDataSourceImpl(super.dio);

  @override
  Future<JokesModel> getJoke() async {
    final result = await checkNetworkAndCallRequest(request: (dio)=>dio.get("https://official-joke-api.appspot.com/random_joke"),
        onResponse:(data){
      return data;
          // return JokesModel.fromJson(data);
        });
    return JokesModel.fromJson(result);
  }

}