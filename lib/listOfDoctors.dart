import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bookAppointment.dart';
import 'consultNow.dart';
import 'doctorDetails.dart';

class listOfDoctorsPage extends StatefulWidget {
  @override
  listOfDoctorsPageState createState() => listOfDoctorsPageState();
}

class listOfDoctorsPageState extends State<listOfDoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Doctors',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black)), // You can add title here
        leading: new IconButton(
          hoverColor: Colors.lightBlueAccent,
          icon: new Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor:
            Colors.white.withOpacity(0.4), //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: Container(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04,
                  height: MediaQuery.of(context).size.height * 1,
                  child: GestureDetector(

                      onTap: () {
                        print('gesture detected');
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => doctorDetailPage()),
                        );
                      },
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 11,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                              EdgeInsets.fromLTRB(8, 10, 2, 2),
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(12.0),
                                                child: Image(
                                                  image: AssetImage(
                                                    'assets/doctor_logo.png',
                                                  ),
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                      10,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                              EdgeInsets.fromLTRB(15, 6, 2, 2),
                                              child: Text('Fees'),
                                            ),
                                            Container(
                                              padding:
                                              EdgeInsets.fromLTRB(15, 4, 2, 2),
                                              child: Text(
                                                '4000/-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ]),
                                      Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                              EdgeInsets.fromLTRB(8, 10, 2, 2),
                                              child: Text('Doctor Name',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.blue)),
                                            ),
                                            Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 2, 2, 2),
                                                child: Text(
                                                  'Specialist',
                                                  style:
                                                  TextStyle(color: Colors.blue),
                                                )),
                                            Container(
                                              padding:
                                              EdgeInsets.fromLTRB(10, 2, 2, 2),
                                              child: Text('Experience | Gender '),
                                            ),
                                            Container(
                                              padding:
                                              EdgeInsets.fromLTRB(10, 2, 2, 2),
                                              child: Text(
                                                  'Languages Spoken by doctor'),
                                            ),
                                            Row(children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    50, 2, 1, 2),
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    14.0),
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .blue)))),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                        MaterialPageRoute(builder: (context) => consultNowPage()),
                                                      );
                                                      print(
                                                          'doctor $index selected');
                                                    },
                                                    child: Text('Consult Now',
                                                        style: TextStyle(
                                                            fontSize: 10))),
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 2, 1, 2),
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                      shape: MaterialStateProperty
                                                          .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  14.0),
                                                              side: BorderSide(
                                                                  color: Colors
                                                                      .blue))),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                        MaterialPageRoute(builder: (context) => bookAppointmentPage()),
                                                      );
                                                      print(
                                                          'doctor $index selected');
                                                    },
                                                    child: Text('Appointment',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.blue))),
                                              ),
                                            ])
                                          ]),
                                    ],
                                  )),
                            );
                          })



                  )


              ),
            ],
          ),
        ),
      ),
    );
  }
}
