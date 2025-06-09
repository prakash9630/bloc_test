import 'package:bloc_test/di/getit_confit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/common_bloc/internet_cheacker/internet_cheacker.dart';

class MultiBlocWrapper extends StatelessWidget {
  const MultiBlocWrapper({super.key,required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
     BlocProvider(create: (_)=>getIt<InternetChecker>()..checkInternet())
    ], child: child);
  }
}
