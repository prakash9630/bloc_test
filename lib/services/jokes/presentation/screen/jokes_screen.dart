import 'package:auto_route/annotations.dart';
import 'package:bloc_test/di/getit_confit.dart';
import 'package:bloc_test/extension/extenson_sidebox.dart';
import 'package:bloc_test/services/jokes/presentation/bloc/jokes_cubit.dart';
import 'package:bloc_test/services/jokes/presentation/bloc/jokes_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class JokesScreen extends StatefulWidget {
  const JokesScreen({super.key});

  @override
  State<JokesScreen> createState() => _JokesScreenState();
}

class _JokesScreenState extends State<JokesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JokesCubit>(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Jokes'),
          ),
          body: BlocBuilder(
            bloc: getIt<JokesCubit>()..getJoke(),
              builder: (context, state) {
            if (state is JokesError) {
              return Center(
                child: Text(state.message),
              );
            }
            if (state is JokesSuccess) {
              return Column(
                children: [
                  Text(state.joke.id.toString()),
                  10.h,
                  Text(state.joke.type ?? ""),
                  10.h,
                  Text(state.joke.punchline ?? ""),
                  10.h,
                  Text(state.joke.setup ?? ""),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
        );
      }),
    );
  }
}
