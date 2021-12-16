import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:navigator2/pages/feature_2_page.dart';
import 'package:navigator2/route/main_route.dart';
import 'package:navigator2/route/main_router_delegate.dart';

class Feature1Page extends StatefulWidget {
  static const path = '/feature1Page';

  const Feature1Page({Key? key}) : super(key: key);

  @override
  _Feature1PageState createState() => _Feature1PageState();
}

class _Feature1PageState extends State<Feature1Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Feature1Page.path),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              //Navigator.of(context).pushNamed(Feature2Page.path);
              context.mainRouterDelegate?.pushNamed(NavInfo(Feature2Page.path));
            },
            child: const Text('Open Feature 2')),
      ),
    );
  }
}