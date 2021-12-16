import 'package:flutter/material.dart';
import 'package:navigator2/pages/feature_1_page.dart';
import 'package:navigator2/pages/feature_2_page.dart';
import 'package:navigator2/pages/feature_3_page.dart';
import 'package:navigator2/pages/unknown_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
