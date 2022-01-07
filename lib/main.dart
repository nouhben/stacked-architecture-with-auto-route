import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app_router.gr.dart';
import 'app/locator.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   routeInformationParser: _appRouter.defaultRouteParser(),
    //   routerDelegate: _appRouter.delegate(),
    // );
    return MaterialApp(
      //    initialRoute: Routes.startupViewRoute,
      // onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
