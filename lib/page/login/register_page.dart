import 'package:appbar_example/page/login/login_page.dart';
import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  get borderRadius => null;
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  height: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              labelText: 'Nome Completo',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              labelText: 'Data de Nascimento',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              labelText: 'Celular',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Comfirmar Senha',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        RaisedButton(
                          textColor: Colors.white,
                          color: Colors.purple,
                          onPressed: () {},
                          child: Container(
                              width: double.infinity,
                              child: Text(
                                'Cadastrar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19),
                                textAlign: TextAlign.center,
                              )),
                        ),
                        RaisedButton(
                          child: Container(
                              width: double.infinity,
                              child: Text(
                                'Voltar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19),
                                textAlign: TextAlign.center,
                              )),
                          textColor: Colors.white,
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  HomePage() {}
  Main() {}
}

myapp() {}
