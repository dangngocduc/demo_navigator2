import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class UnknownRoute extends StatefulWidget {
  static const path = '/unknownRoute';

  const UnknownRoute({Key? key}) : super(key: key);

  @override
  _UnknownRouteState createState() => _UnknownRouteState();
}

class _UnknownRouteState extends State<UnknownRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('UnknownRoute T.T'),
      ),
    );
  }
}