import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctorDetails.dart';

class consultNowPage extends StatefulWidget {
  @override
  consultNowPageState createState() => consultNowPageState();
}

class consultNowPageState extends State<consultNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Book Appointment',
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
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.00,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width * 0.55,
                      padding: EdgeInsets.fromLTRB(25, 5, 15, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Remaining Time to Book',
                                  style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                                ),
                                Text('Timer',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ]),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.08,
                    left: MediaQuery.of(context).size.width * 0.02,
                    right: MediaQuery.of(context).size.width * 0.02,
                    height: MediaQuery.of(context).size.height /3,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 8, 2, 2),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/doctor_logo.png',
                                        ),
                                        height:
                                        MediaQuery.of(context).size.height / 14,
                                      ),
                                    ),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(18, 2, 2, 2),
                                    child: Text('Doctor Name',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.blue)),
                                  ),
                                ]),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        15, 5, 2, 2),
                                                    child: Text(
                                                      'Specialist:',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )),
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        15, 2, 2, 2),
                                                    child: Text(
                                                      'Type',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    )),
                                              ]),
                                          Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        50, 5, 2, 2),
                                                    child: Text(
                                                      'Experience:',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )),
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        50, 2, 2, 2),
                                                    child: Text(
                                                      'Years',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    )),
                                              ]),
                                          Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        50, 5, 2, 2),
                                                    child: Text(
                                                      'Gender:',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )),
                                                Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        50, 2, 2, 2),
                                                    child: Text(
                                                      'Gender',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    )),
                                              ])
                                        ]),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(15, 5, 2, 2),
                                                child: Text(
                                                  'Organisation:',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                )),
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(15, 2, 2, 2),
                                                child: Text(
                                                  'Hospital',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                )),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(35, 5, 2, 2),
                                                child: Text(
                                                  'Fees:',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                )),
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(35, 2, 2, 2),
                                                child: Text(
                                                  'Rupees',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                )),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(65, 5, 2, 2),
                                                child: Text(
                                                  'Location:',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                )),
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(65, 2, 2, 2),
                                                child: Text(
                                                  'Pune',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(15, 5, 2, 2),
                                                child: Text(
                                                  'Speaks:',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                )),
                                            Container(
                                                padding:
                                                EdgeInsets.fromLTRB(15, 2, 2, 2),
                                                child: Text(
                                                  'Languages',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                )),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.41,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02,
                  height: MediaQuery.of(context).size.height/5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(18, 8, 2, 2),
                              child: Text('Appointment Details',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue)),
                            ),
                          ]),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(15, 5, 2, 2),
                                              child: Text(
                                                'Appointment Date:',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )),
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(15, 3, 2, 2),
                                              child: Text(
                                                'Day, Month ,Date Year',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              )),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(50, 5, 2, 2),
                                              child: Text(
                                                'Symptoms:',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )),
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(50, 3, 2, 2),
                                              child: Text(
                                                'Symptomp Name',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              )),
                                        ]),
                                  ]),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.fromLTRB(15, 5, 2, 2),
                                          child: Text(
                                            'Appointment Duration:',
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.grey),
                                          )),
                                      Container(
                                          padding: EdgeInsets.fromLTRB(15, 3, 2, 2),
                                          child: Text(
                                            'Time Displayed',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.black),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.60,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02,
                  height: MediaQuery.of(context).size.height  /5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(18, 8, 2, 2),
                              child: Text('Patient Details',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue)),
                            ),
                          ]),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(15, 5, 2, 2),
                                              child: Text(
                                                'Patient Name:',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )),
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(15, 3, 2, 2),
                                              child: Text(
                                                'Name',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              )),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(50, 5, 2, 2),
                                              child: Text(
                                                'Patient Age:',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )),
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(50, 3, 2, 2),
                                              child: Text(
                                                'Age',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              )),
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(50, 5, 2, 2),
                                              child: Text(
                                                'Gender:',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )),
                                          Container(
                                              padding:
                                              EdgeInsets.fromLTRB(50, 3, 2, 2),
                                              child: Text(
                                                'Male',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              )),
                                        ])
                                  ]),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.fromLTRB(15, 5, 2, 2),
                                          child: Text(
                                            'Mobile Duration:',
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.grey),
                                          )),
                                      Container(
                                          padding: EdgeInsets.fromLTRB(15, 3, 2, 2),
                                          child: Text(
                                            'Number Displayed',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.black),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                    child: Positioned(
                        top : MediaQuery.of(context).size.height * 0.78,
                        child: Container(
                          child:
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/3,
                                    padding: EdgeInsets.fromLTRB(5, 5, 2, 2),
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
                                          print(
                                              'doctor selected for Appointment');
                                        },
                                        child: Text('Confirm',
                                            style: TextStyle(
                                                fontSize: 10))),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width/3,
                                    padding: EdgeInsets.fromLTRB(5, 5, 2, 2),
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
                                          print(
                                              'appointment cancelled');
                                        },
                                        child: Text('Cancel',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.blue))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                    )
                )
              ]),
            )
        )
    );
  }
}
