import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/registrationPage.dart';
import 'package:table_calendar/table_calendar.dart';

import 'doctorDetails.dart';

class bookAppointmentPage extends StatefulWidget {
  @override
  bookAppointmentPageState createState() => bookAppointmentPageState();
}

class bookAppointmentPageState extends State<bookAppointmentPage> {
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
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              child: Stack(
                  alignment: Alignment.center,
                  children: [


                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      height: MediaQuery.of(context).size.height / 12,
                    child:Container(
                      child:TextButton(onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => registrationPage()),
                        );
                        print('button pressed');
                      //   Positioned(
                      //   top: MediaQuery.of(context).size.height * 0.00,
                      //   child: Container(
                      //     child: TableCalendar(
                      //       calendarStyle:
                      //       CalendarStyle(cellPadding: EdgeInsets.all(0)),
                      //       calendarFormat: CalendarFormat.month,
                      //       firstDay: DateTime.utc(2010, 10, 16),
                      //       lastDay: DateTime.utc(2030, 3, 14),
                      //       focusedDay: DateTime.now(),
                      //     ),
                      //   ),
                      // );

                      },
                        child: Text('Select Date'),),),
                    ),


                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.35,
                          left: MediaQuery.of(context).size.width * 0.02,
                          right: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.height / 12,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(18, 1, 1, 1),
                                    child: Text('Slots Available',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.blue)),
                                  ),
                                ]),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            padding: EdgeInsets.fromLTRB(
                                                18, 2, 1, 2),
                                            child: Text('Slots',
                                                style:
                                                    TextStyle(fontSize: 12))),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            padding:
                                                EdgeInsets.fromLTRB(1, 2, 1, 2),
                                            child: Text('Slots',
                                                style:
                                                    TextStyle(fontSize: 12))),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            padding:
                                                EdgeInsets.fromLTRB(1, 3, 1, 3),
                                            child: Text('Slots',
                                                style:
                                                    TextStyle(fontSize: 12))),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.45,
                          left: MediaQuery.of(context).size.width * 0.02,
                          right: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.height / 6,
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
                                      padding: EdgeInsets.fromLTRB(15, 2, 1, 2),
                                      child: Text('Appointment Details',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blue)),
                                    ),
                                  ]),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              15, 2, 1, 2),
                                                      child: Text(
                                                        'Appointment Date:',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.grey),
                                                      )),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              15, 2, 1, 2),
                                                      child: Text(
                                                        'Day, Month ,Date Year',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )),
                                                ]),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              50, 2, 1, 2),
                                                      child: Text(
                                                        'Symptoms:',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.grey),
                                                      )),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              50, 2, 1, 2),
                                                      child: Text(
                                                        'Symptomp Name',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )),
                                                ]),
                                          ]),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      15, 2, 1, 2),
                                                  child: Text(
                                                    'Appointment Duration:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey),
                                                  )),
                                              Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      15, 2, 1, 2),
                                                  child: Text(
                                                    'Time Displayed',
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
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.62,
                          left: MediaQuery.of(context).size.width * 0.02,
                          right: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.height / 6,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(15, 2, 1, 2),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            15, 2, 1, 2),
                                                    child: Text(
                                                      'Patient Name:',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )),
                                                Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            15, 2, 1, 2),
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
                                                        EdgeInsets.fromLTRB(
                                                            50, 2, 1, 2),
                                                    child: Text(
                                                      'Patient Age:',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )),
                                                Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            50, 2, 1, 2),
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
                                                        EdgeInsets.fromLTRB(
                                                            50, 2, 1, 2),
                                                    child: Text(
                                                      'Gender:',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )),
                                                Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            50, 2, 1, 2),
                                                    child: Text(
                                                      'Male',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    )),
                                              ])
                                        ]),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 2, 1, 2),
                                                child: Text(
                                                  'Mobile Duration:',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.grey),
                                                )),
                                            Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 2, 1, 2),
                                                child: Text(
                                                  'Number Displayed',
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
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.80,
                          height: MediaQuery.of(context).size.height / 19,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                              side: BorderSide(
                                                  color: Colors.blue)))),
                                  onPressed: () {
                                    print('doctor selected for Appointment');
                                  },
                                  child: Text('Confirm',
                                      style: TextStyle(fontSize: 10))),
                              ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                            side: BorderSide(
                                                color: Colors.blue))),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    print('appointment cancelled');
                                  },
                                  child: Text('Cancel',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.blue))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            ));
  }
}
