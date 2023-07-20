import 'dart:async';

import 'package:flutter/material.dart';

import 'auth/login.dart';

class SplashScreen extends StatelessWidget {
  static const String id = '/';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, Login.id);
    });
    return const Placeholder();
  }
}
