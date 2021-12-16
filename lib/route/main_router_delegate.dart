import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator2/pages/unknown_route.dart';
import 'package:navigator2/route/main_route.dart';

class MainRouterDelegate extends RouterDelegate<NavInfo> with ChangeNotifier {
  final MainPageFactory onGenerateRoute;
  final MainPageFactory onUnknownRoute;

  MainRouterDelegate(
      {required this.onGenerateRoute, required this.onUnknownRoute});

  List<NavInfo> history = [];

  List<Page> get _pages => history.map(
        (e) {
          final page = onGenerateRoute(e);
          return page ?? onUnknownRoute(e)!;
        },
      ).toList();

  @override
  Widget build(BuildContext context) {
    developer.log('history ${history.length}', name: 'MainRouterDelegate.build');
    return Navigator(
      onPopPage: (Route<dynamic> route, dynamic result) {
        developer.log('onPopPage pop route ${route.settings} result $result', name: 'MainRouterDelegate.build');
        pop();
        return false;
      },
      pages: history.isEmpty
          ? [
              const MaterialPage(
                child: UnknownRoute(),
              ),
            ]
          : _pages,
    );
  }

  @override
  Future<bool> popRoute() async {
    return true; // ???
  }

  void pushNamed(NavInfo navInfo) {
    history.add(navInfo);
    notifyListeners();
  }

  void pop() {
    developer.log('pop', name: 'MainRouterDelegate.pop');
    history.removeLast();
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(NavInfo configuration) async {
    developer.log('configuration ${configuration.name}', name: 'MainRouterDelegate.setNewRoutePath');
    history = [
      configuration
    ];
    history.add(configuration);
    notifyListeners();
  }

  @override
  NavInfo? get currentConfiguration => history.isEmpty ? null : history.last;
}
