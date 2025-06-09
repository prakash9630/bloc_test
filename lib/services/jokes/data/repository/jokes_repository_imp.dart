import 'package:bloc_test/services/jokes/data/datasource/jokes_data_source.dart';
import 'package:bloc_test/services/jokes/data/model/jokes_model.dart';
import 'package:injectable/injectable.dart';
import '../../doman/repository/jokes_repository.dart';

@Singleton(as: JokesRepository)
class JokesRepositoryImp implements JokesRepository {
  JokesDataSource repo;
  JokesRepositoryImp(this.repo);
  @override
  Future<JokesModel> getJoke() {
     return repo.getJoke();
  }
}