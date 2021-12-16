import 'package:flutter/material.dart';
import 'package:navigator2/pages/feature_1_page.dart';
import 'package:navigator2/pages/feature_2_page.dart';
import 'package:navigator2/pages/feature_3_page.dart';
import 'package:navigator2/pages/unknown_route.dart';
import 'package:navigator2/route/main_route.dart';
import 'package:navigator2/route/main_route_information_parser.dart';
import 'package:navigator2/route/main_router_delegate.dart';

void main() {
  runApp(const MyAppNav2());
}

class MyAppNav2 extends StatefulWidget {
  const MyAppNav2({Key? key}) : super(key: key);

  @override
  MyAppNav2State createState()  => MyAppNav2State();

}

class MyAppNav2State extends State<MyAppNav2> {
  late MainRouterDelegate delegate;

  @override
  void initState() {
    super.initState();
    delegate = MainRouterDelegate(
      onUnknownRoute: (NavInfo settings) {
        return const MaterialPage(child: UnknownRoute());
      },
      onGenerateRoute: (NavInfo settings) {
        switch (settings.name) {
          case Feature1Page.path:
            return const MaterialPage(
                child: Feature1Page()
            );
          case Feature2Page.path:
            return const MaterialPage(
                child: Feature2Page()
            );
          case Feature3Page.path:
            return const MaterialPage(
                child: Feature3Page()
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: delegate,
      routeInformationParser: MainRouteInformationParser(),
    );
  }
}
