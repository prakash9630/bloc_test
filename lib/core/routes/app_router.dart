import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/core/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,),
    AutoRoute(page: JokesRoute.page,),
    AutoRoute(page: IpRoute.page,initial: true),
  ];
}