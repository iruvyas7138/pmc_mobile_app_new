import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/forgotPasswordPage.dart';
import 'package:pmc_mobile_app/resetPasswordPage.dart';
import 'loginPage.dart';
import 'registrationPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body:
        loginPage(),
      ),
    );
  }
}