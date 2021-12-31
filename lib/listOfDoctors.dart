import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/loginPage.dart';
import 'package:pmc_mobile_app/resetPasswordPage.dart';

class listOfDoctorsPage extends StatefulWidget {
  @override
  listOfDoctorsPageState createState() => listOfDoctorsPageState();
}

class listOfDoctorsPageState extends State<listOfDoctorsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [


              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: AppBar(
                  title: Text('List Of Doctors'),// You can add title here
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.blue.withOpacity(0.0), //You can make this transparent
                  elevation: 0.0, //No shadow
                ),),



            ],
          ),
        ),
      ),
    );
  }
}