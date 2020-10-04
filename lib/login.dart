import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'LOGIN_PAGE';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController(text: 'leonidas@yopan.com.br');
  final _passwordController = TextEditingController(text: '123123');

  @override
  Widget build(BuildContext context) {
    void _authenticate() {}

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _emailController,
              ),
              SizedBox(height: 30),
              TextField(
                controller: _passwordController,
                obscureText: true,
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: _authenticate,
                      child: Text('Acessar HomePage'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
