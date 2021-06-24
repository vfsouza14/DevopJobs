import 'package:devop_jobs/core/app_gradients.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email = "";
  var senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (email) {
                    if (email == "") {
                      return "Informe o e-mail";
                    } else if (!email!.contains("@")) {
                      return "E-mail inválido";
                    }
                  },
                  onSaved: (var val) {
                    email = val.toString();
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                TextFormField(
                  validator: (senha) {
                    if (senha == "") {
                      return "Informe a senha";
                    }
                  },
                  onSaved: (var val) {
                    senha = val.toString();
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: ElevatedButton(
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
