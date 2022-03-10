import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pmc_mobile_app/doctorScreens/RegistrationLogin/Login.dart';
import 'package:pmc_mobile_app/doctorScreens/dashboard/dashboard.dart';
import 'package:pmc_mobile_app/doctorScreens/doctorAppointmentPage.dart';
import 'package:pmc_mobile_app/doctorScreens/forgotresetPassword/ForgotPassword.dart';
import 'package:pmc_mobile_app/doctorScreens/forgotresetPassword/ResetPassword.dart';
import 'package:pmc_mobile_app/doctorScreens/profile/doctorProfilePage2.dart';
import 'doctorScreens/RegistrationLogin/Registration.dart';


void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body:ResetPassword(),

      ),
    );
  }
}