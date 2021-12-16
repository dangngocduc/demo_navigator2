// => Giống như RouteSettings
import 'package:flutter/cupertino.dart';

import 'main_router_delegate.dart';

class NavInfo {
  String? name;

  NavInfo(this.name);
}

typedef MainPageFactory = Page<dynamic>? Function(NavInfo settings);

extension MainRouteExtension on BuildContext {
  MainRouterDelegate? get mainRouterDelegate {
    return (Router.of(this).routerDelegate is MainRouterDelegate)
        ? Router.of(this).routerDelegate as MainRouterDelegate
        : null;
  }
}
