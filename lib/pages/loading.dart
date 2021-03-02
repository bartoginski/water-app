import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:water_app/main.dart';
import 'package:water_app/pages/mainPage.dart';

import '../user.dart';

class LoadingRoute extends StatefulWidget {
  final User user;

  LoadingRoute({this.user});

  @override
  _LoadingRouteState createState() => _LoadingRouteState();
}

class _LoadingRouteState extends State<LoadingRoute> {
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() async {
    await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MainPage(
                  user: widget.user,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
