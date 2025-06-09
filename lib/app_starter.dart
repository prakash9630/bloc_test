import 'package:bloc_test/core/common_bloc/internet_cheacker/internet_cheacker.dart';
import 'package:bloc_test/core/routes/app_router.dart';
import 'package:bloc_test/core/them/app_them.dart';
import 'package:bloc_test/core/util/toast_message.dart';
import 'package:bloc_test/multi_bloc_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppStarter extends StatelessWidget {
   AppStarter({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocWrapper(
      child:BlocListener<InternetCheacker, bool>(
        listener: (BuildContext context,state) {
          if(!state){
            showErrorToast("No internet connection");
          }
        },
        child: MaterialApp.router(
          theme: appThem,
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),

        ),
      ),
    );
  }
}
