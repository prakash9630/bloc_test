import 'package:flutter/cupertino.dart';
import 'di/getit_confit.dart';

Future<void> appConfig({required Widget childWidget}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
 // await getIt.allReady();
  runApp(childWidget);

}