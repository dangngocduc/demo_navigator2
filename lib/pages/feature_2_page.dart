import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'feature_3_page.dart';
import 'package:navigator2/route/main_route.dart';
import 'package:navigator2/route/main_router_delegate.dart';
class Feature2Page extends StatefulWidget {
  static const path = '/feature2Page';

  const Feature2Page({Key? key}) : super(key: key);

  @override
  _Feature2PageState createState() => _Feature2PageState();
}

class _Feature2PageState extends State<Feature2Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.mainRouterDelegate?.pop();
          },
        ),
        title: const Text(Feature2Page.path),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushNamed(Feature3Page.path);
              //context.mainRouterDelegate?.pushNamed(NavInfo(Feature3Page.path));
            },
            child: const Text('Open Feature 3')),
      ),
    );
  }
}