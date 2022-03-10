import 'dart:html';

import 'package:appbar_example/main.dart';
import 'package:appbar_example/page/login/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  final emailcontroller = TextEditingController();
  final senhacontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.black.withOpacity(0.2),
        ),
        _body(context),
      ],
    ));
  }

  SingleChildScrollView _body(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/logo.png'),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailcontroller,
                        onChanged: (emailcontroller) {
                          email = emailcontroller;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: senhacontroller,
                        onChanged: (senhacontroller) {
                          senha = senhacontroller;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.purple,
                        onPressed: () {
                          if (email == 'megacity@gmail.com' && senha == '123') {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => MainPage()),
                            );
                          } else {
                            print('login incorreto');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      RaisedButton(
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Cadastre-se',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            )),
                        textColor: Colors.white,
                        color: Colors.purple,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              TextButton.icon(
                icon: Icon(
                  FontAwesome.home,
                  color: Colors.white,
                ),
                label: Text(
                  'Esqueceu a senha ?',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
