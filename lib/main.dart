import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pmc_mobile_app/bookAppointment.dart';
import 'package:pmc_mobile_app/consultNow.dart';
import 'package:pmc_mobile_app/myProfilePage1.dart';
import 'package:pmc_mobile_app/myProfilePage2.dart';
import 'package:pmc_mobile_app/selectSymptom.dart';
import 'doctorDetails.dart';
import 'listOfDoctors.dart';
import 'loginPage.dart';
import 'myProfilePage3.dart';

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
        body:myProfilePage2(),
      ),
    );
  }
}