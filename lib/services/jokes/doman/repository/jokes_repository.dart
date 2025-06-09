import 'package:bloc_test/services/jokes/data/model/jokes_model.dart';

abstract class JokesRepository {
  Future<JokesModel> getJoke();
}