import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/core/routes/app_router.gr.dart';
import 'package:bloc_test/custom_widgets/custom_dropdown.dart';
import 'package:bloc_test/di/getit_confit.dart';
import 'package:bloc_test/extension/extenson_sidebox.dart';
import 'package:bloc_test/services/home/presentatin/bloc/login_bloc.dart';
import 'package:bloc_test/services/home/presentatin/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_event.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _usernameController = TextEditingController(text: "bindu@kodiary.com");
  final _passwordController = TextEditingController(text: "Pj#tYeczWQ!#456");

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (BuildContext context) => getIt<LoginBloc>(),
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Home'),
              ),
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      12.h,
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                      20.h,
                      CustomDropdown<String>(
                          listItems: (data, props) =>
                              ["Item 1", "Item 2", "Item 3"],
                          selectedItem: "Item 1", itemAsString: (value)=> value,),
                      10.h,
                      BlocListener<LoginBloc, LoginState>(
                        listener: (BuildContext _, state) {
                          if (state is LoginSuccess) {
                            print("success");
                            context.router.push(const IpRoute());
                            // context.router.push(const JokesRoute());

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(state.success.toString()),
                            ));
                          } else if (state is LoginError) {
                            print("failure");
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("error occored"),
                            ));
                          }
                        },
                        child: TextButton(
                            onPressed: () {
                              context.read<LoginBloc>().add(LoginFetchEvent(
                                  _usernameController.text,
                                  _passwordController.text));
                            },
                            style: TextButton.styleFrom(),
                            child: const Text('Login')),
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
