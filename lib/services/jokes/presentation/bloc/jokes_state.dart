
import 'package:bloc_test/services/jokes/data/model/jokes_model.dart';

abstract class JokesState{}


class JokesInitial extends JokesState{}
class JokesLoading extends JokesState{}
class JokesSuccess extends JokesState{
  final JokesModel joke;
  JokesSuccess(this.joke);
}
class JokesError extends JokesState{
  final String message;
  JokesError(this.message);
}