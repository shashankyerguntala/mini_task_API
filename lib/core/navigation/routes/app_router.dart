import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(page: FirstRoute.page),
        AutoRoute(page: SecondRoute.page),
        AutoRoute(page: ThirdRoute.page),
      ],
    ),
  ];
}
