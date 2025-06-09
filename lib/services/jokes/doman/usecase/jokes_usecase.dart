import 'package:bloc_test/services/jokes/data/model/jokes_model.dart';
import 'package:bloc_test/services/jokes/doman/repository/jokes_repository.dart';
import 'package:injectable/injectable.dart';


@singleton
class JokesUseCase {
  final JokesRepository jokesRepository;
  JokesUseCase({required this.jokesRepository});

  Future<JokesModel> call() {
   return jokesRepository.getJoke();
  }
}