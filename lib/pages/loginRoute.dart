import 'package:flutter/material.dart';
import 'package:water_app/user.dart';

import 'loading.dart';

class LoginRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isValid = false;

  void onSubmit() {
    String password = _passwordController.text;
    String username = _usernameController.text;

    if (password != '' && username != '') {
      User user = User(username: username, password: password);
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage(user: user,)));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoadingRoute(user: user,)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 80, 20, 80),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(fontSize: 50),
                        ),
                        TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(labelText: 'Username'),

                        ),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: onSubmit,
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
