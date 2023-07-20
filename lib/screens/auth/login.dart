import 'package:flutter/material.dart';

import '../../components/text_input_material.dart';
import '../nav_screen.dart';

class Login extends StatefulWidget {
  static const String id = '/login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Welcome!"),
            Column(children: [
              TextInputMaterial(labelText: "Email", onChangeListener: (text) => {debugPrint(text)}),
              const SizedBox(
                height: 10,
              ),
              TextInputMaterial(labelText: "Password", onChangeListener: (text) => {debugPrint(text)}, obscureText: true,),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, NavScreen.id)},
                  child: Text("Login"))
            ]),
          ],
        ),
      ),
    );
  }
}
