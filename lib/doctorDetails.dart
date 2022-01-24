import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bookAppointment.dart';
import 'consultNow.dart';

class doctorDetailPage extends StatefulWidget {
  @override
  doctorDetailPageState createState() => doctorDetailPageState();
}

class doctorDetailPageState extends State<doctorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SafeArea(
      child: Stack(alignment: Alignment.center, children: [
        AppBar(
          title: Text("Doctor Details",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.black)),

          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 26.0,
                  ),
                )),
          ],
          backgroundColor:
              Colors.white.withOpacity(0.4), //You can make this transparent
          elevation: 0.0, //No shadow
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.10,
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02,
          height: MediaQuery.of(context).size.height / 3,
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
                          height: MediaQuery.of(context).size.height / 14,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 2, 2, 2),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(15, 5, 2, 2),
                                      child: Text(
                                        'Specialist:',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(15, 2, 2, 2),
                                      child: Text(
                                        'Type',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      )),
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(50, 5, 2, 2),
                                      child: Text(
                                        'Experience:',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(50, 2, 2, 2),
                                      child: Text(
                                        'Years',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      )),
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(50, 5, 2, 2),
                                      child: Text(
                                        'Gender:',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(50, 2, 2, 2),
                                      child: Text(
                                        'Gender',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
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
                                    'Organisation:',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(15, 2, 2, 2),
                                  child: Text(
                                    'Hospital',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(35, 5, 2, 2),
                                  child: Text(
                                    'Fees:',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(35, 2, 2, 2),
                                  child: Text(
                                    'Rupees',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(65, 5, 2, 2),
                                  child: Text(
                                    'Location:',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(65, 2, 2, 2),
                                  child: Text(
                                    'Pune',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(15, 5, 2, 2),
                                  child: Text(
                                    'Speaks:',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(15, 2, 2, 2),
                                  child: Text(
                                    'Languages',
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
              )),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.38,
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02,
          height: MediaQuery.of(context).size.height * 0.21,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 8, 2, 2),
                    child: Text('About Doctor',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue)),
                  ),
                ]),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.fromLTRB(15, 5, 2, 2),
                            child: Text(
                              'Noa is a Health Care Kit that allows families with children around the age of five to prepare to positively overcome the childs future vaccinations.',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.53,
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02,
          height: MediaQuery.of(context).size.height /3,
          child: Column(
            children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text('Treatments',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue)),
                  )
                 ]),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20.0),
                                            side: BorderSide(
                                                color: Colors.blue)))),
                                onPressed: () {

                                  print('symptom for selected for Appointment');
                                },
                                child: Text('Symptom',
                                    style: TextStyle(fontSize: 10))),

                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20.0),
                                            side: BorderSide(
                                                color: Colors.blue)))),
                                onPressed: () {

                                  print('symptom for selected for Appointment');
                                },
                                child: Text('Symptom',
                                    style: TextStyle(fontSize: 10))),

                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20.0),
                                            side: BorderSide(
                                                color: Colors.blue)))),
                                onPressed: () {

                                  print('symptom for selected for Appointment');
                                },
                                child: Text('Symptom',
                                    style: TextStyle(fontSize: 10))),

                          ],
                        )
                      ]
                  ),

              Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                        side: BorderSide(
                                            color: Colors.blue)))),
                            onPressed: () {

                              print('symptom for selected for Appointment');
                            },
                            child: Text('Symptom',
                                style: TextStyle(fontSize: 10))),

                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                        side: BorderSide(
                                            color: Colors.blue)))),
                            onPressed: () {

                              print('symptom for selected for Appointment');
                            },
                            child: Text('Symptom',
                                style: TextStyle(fontSize: 10))),

                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.0),
                                        side: BorderSide(
                                            color: Colors.blue)))),
                            onPressed: () {

                              print('symptom for selected for Appointment');
                            },
                            child: Text('Symptom',
                                style: TextStyle(fontSize: 10))),

                      ],
                    )
                  ]
              ),

              Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20.0),
                                          side: BorderSide(
                                              color: Colors.blue)))),
                              onPressed: () {

                                print('symptom for selected for Appointment');
                              },
                              child: Text('Symptom',
                                  style: TextStyle(fontSize: 10))),

                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20.0),
                                          side: BorderSide(
                                              color: Colors.blue)))),
                              onPressed: () {

                                print('symptom for selected for Appointment');
                              },
                              child: Text('Symptom',
                                  style: TextStyle(fontSize: 10))),

                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20.0),
                                          side: BorderSide(
                                              color: Colors.blue)))),
                              onPressed: () {

                                print('symptom for selected for Appointment');
                              },
                              child: Text('Symptom',
                                  style: TextStyle(fontSize: 10))),

                        ],
                      )
                    ]
                ),
              ],
            ),
          ),

        Container(
            child: Positioned(
                top: MediaQuery.of(context).size.height * 0.83,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 2),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                            side: BorderSide(
                                                color: Colors.blue)))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => consultNowPage()),
                                  );
                                  print('doctor selected for Appointment');
                                },
                                child: Text('Consult Now',
                                    style: TextStyle(fontSize: 10))),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 2),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                          side:
                                              BorderSide(color: Colors.blue))),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            bookAppointmentPage()),
                                  );
                                  print('appointment ');
                                },
                                child: Text('Appointment',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blue))),
                          ),
                        ],
                      ),
                    ],
                  ),
                )))
      ]),
    )));
  }
}
