import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:navigator2/pages/feature_1_page.dart';
import 'package:navigator2/pages/feature_2_page.dart';
import 'package:navigator2/route/main_route.dart';

class MainRouteInformationParser extends RouteInformationParser<NavInfo> {
  @override
  Future<NavInfo> parseRouteInformation(RouteInformation routeInformation) async {
    developer.log('routeInformation ${routeInformation.location}', name: 'MainRouteInformationParser.parseRouteInformation');
    return NavInfo(Feature2Page.path);
  }

  @override
  RouteInformation? restoreRouteInformation(NavInfo configuration) {
    return RouteInformation(location: configuration.name);
  }

}