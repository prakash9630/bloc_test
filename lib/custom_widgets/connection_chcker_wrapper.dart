
import 'package:bloc_test/core/common_bloc/internet_cheacker/internet_cheacker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetCheckerWrapper extends StatelessWidget {
  const InternetCheckerWrapper({super.key,required this.onNetworkChange,required this.child});
  final Function(bool state) onNetworkChange;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetChecker, bool>(listener: (context, state) {
      onNetworkChange(state);
    },
    child:child,);
  }
}
