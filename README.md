# navigator2

## Getting Started

Note: Run with main_nav2.dart 

Navigator 1.0
```
    return MaterialApp(
      initialRoute: Feature1Page.path,
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => const UnknownRoute(), settings: settings),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Feature1Page.path:
            return MaterialPageRoute(
                builder: (context) => const Feature1Page(), settings: settings);
          case Feature2Page.path:
            return MaterialPageRoute(
                builder: (context) => const Feature2Page(), settings: settings);
          case Feature3Page.path:
            return MaterialPageRoute(
                builder: (context) => const Feature3Page(), settings: settings);
        }
      },
    );
```
Navigator 2.0

```
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
```

RouteInformationParser: lib/route/main_route_information_parser.dart

RouterDelegate -> lib/route/main_router_delegate.dart

Step:

- Create `NavInfo`

- Create `MainRouteInformationParser`

- Create `MainRouterDelegate` 
   




