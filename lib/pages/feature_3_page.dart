import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:navigator2/route/main_route.dart';
import 'package:navigator2/route/main_router_delegate.dart';
class Feature3Page extends StatefulWidget {
  static const path = '/feature3Page';

  const Feature3Page({Key? key}) : super(key: key);

  @override
  _Feature3PageState createState() => _Feature3PageState();
}

class _Feature3PageState extends State<Feature3Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Feature3Page.path),
        leading: BackButton(
          onPressed: () {
            // context.mainRouterDelegate?.pop();
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Container(),
    );
  }
}