import 'package:auto_route/annotations.dart';
import 'package:bloc_test/di/getit_confit.dart';
import 'package:bloc_test/extension/extenson_sidebox.dart';
import 'package:bloc_test/services/ip_info/presentation/bloc/ip_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../custom_widgets/connection_chcker_wrapper.dart';
import '../bloc/ip_state.dart';

@RoutePage()
class IpScreen extends StatefulWidget {
  const IpScreen({super.key});

  @override
  State<IpScreen> createState() => _IpScreenState();
}

class _IpScreenState extends State<IpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => getIt<IpCubit>()..getIp(),
        child: Builder(builder: (context) {
         return InternetCheckerWrapper(
            onNetworkChange: (bool state) {
              if(state){
                context.read<IpCubit>().getIp();
              }
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text("IP Info"),
              ),
              body: BlocBuilder<IpCubit, IpState>(builder: (context, state) {
                return switch (state) {
                // TODO: Handle this case.
                  Initial() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                // TODO: Handle this case.
                  Loading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                // TODO: Handle this case.
                  Success data => Column(
                    children: [
                      Text(data.model.ip),
                      10.h,
                      Text(data.model.city),
                      10.h,
                      Text(data.model.region),
                      10.h,
                      Text(data.model.country),
                      10.h,
                      Text(data.model.loc),
                      10.h,
                      Text(data.model.org),
                      10.h,
                      Text(data.model.postal),
                      10.h,
                      Text(data.model.timezone),
                      10.h,
                      Text(data.model.readme),
                    ],
                  ),
                // TODO: Handle this case.
                  Error() => const Center(
                    child: Text("Error"),
                  ),
                };
              }),
            ),
          );
        }));
  }
}
