import 'package:flutter/material.dart';
import 'package:water_app/pages/loginRoute.dart';
import 'package:water_app/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display FirstPage
      home: LoginRoute(),
    );
  }
}

class MainPage extends StatefulWidget {
  final User user;

  MainPage({@required this.user});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Tab'),
      ),
      body: Center(
        child: Text(
          'Hello ${widget.user.username}',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
