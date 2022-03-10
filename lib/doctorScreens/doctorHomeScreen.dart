import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctorHamburger.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
          height: MediaQuery.of(context).size.height * 0.90,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 7,
                      decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1.0,
                              spreadRadius: 1.0, //extend the shadow
                            ),
                          ]),
                      child: IconButton(
                          hoverColor: Color(0XFF2495C4),
                          icon: new Icon(Icons.menu, color: Color(0XFF2495C4)),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => doctorappDrawer()));
                          }),
                    ),
                    Text("Welcome",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily:"Montserrat",
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF29ABE2),
                        )),
                    CircleAvatar(
                      backgroundColor: Color(0XFF29ABE2),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'How are you today?',
                  style: TextStyle(
                      fontFamily:"Montserrat",
                      color: Color(0XFF414A53),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0XFF9096AF).withOpacity(0.3),
                            width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0XFF2495C4),
                            size: 25.0,
                          ),
                          Text(
                            'Search Doctors',
                            style: TextStyle(
                              fontFamily:"Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF9096AF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0XFF9096AF).withOpacity(0.3),
                            width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_alt_outlined,
                          size: 25.0,
                        ),
                        color: Color(0XFF2495C4),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Schedules',
                      style: TextStyle(
                          fontFamily:"Montserrat",
                          color: Color(0XFF414A53),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text('See all',
                      style: TextStyle(
                          fontFamily:"Montserrat",
                          color: Color(0XFF29ABE2),
                          fontWeight: FontWeight.w700,
                          fontSize: 12),),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF29ABE2),
                              ),
                            ]),
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                8,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                16,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0XFFFFFFFF),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Dr. Haley",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                      fontWeight: FontWeight.w700,
                                                      fontFamily:"Montserrat",
                                                      color: Color(0XFFFFFFFF)),
                                                ),
                                                Text(
                                                  "Female | 24 Years",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily:"Montserrat",
                                                      color: Color(0XFFFFFFFF)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.4,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  12,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0XFF26A0D4),
                                                    ),
                                                  ]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceAround,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .calendar_today_rounded,
                                                        color: Colors.white,
                                                        size: 25,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Tuesday, January 11, 2022",
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w600,
                                                                fontFamily:"Montserrat",
                                                                color:
                                                                    Colors.white),
                                                          ),
                                                          Text(
                                                            "4:15 PM",
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w600,
                                                                fontFamily:"Montserrat",
                                                                color:
                                                                    Colors.white),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height / 5.3,
                                      width:
                                          MediaQuery.of(context).size.width / 3.2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          border: Border.all(
                                              color: Color(0xFF29ABE2),
                                              width: 2.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                            ),
                                          ]),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "Next Consulation:",
                                            style:
                                                TextStyle(fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:"Montserrat",color: Colors.black54),
                                          ),
                                          // SizedBox(
                                          //   height: 4.0,
                                          // ),
                                          Text("0.10:00:00s",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily:"Montserrat",
                                                  color: Colors.blue,
                                                  fontSize: 18.0)),
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  //getUpcomingAppointment();
                                                  //  getConsultedDoctorList();
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFF29ABE2),
                                                  ),
                                                  foregroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                  shape: MaterialStateProperty
                                                      .all<OutlinedBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                                ),
                                                child: Row(

                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(Icons
                                                        .video_call_outlined),
                                                    Text("Join",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.w600,
                                                            fontFamily:"Montserrat",
                                                            color: Colors.white,
                                                            fontSize: 14)),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ))),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.4,
                          height: MediaQuery.of(context).size.height * 0.22,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0XFF9096AF).withOpacity(0.3),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 15,
                                        color: Color(0XFF29ABE2),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Today’s ',
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:"Montserrat",
                                                color: Color(0XFF414A53)),
                                          ),
                                          Text(
                                            'Appointments',
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:"Montserrat",
                                                color: Color(0XFF414A53)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '05',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:"Montserrat", color: Color(0XFF29ABE2)),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      height:
                                          MediaQuery.of(context).size.height / 23,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'View All',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                fontFamily:"Montserrat",
                                                color: Color(0XFFFFFFFF)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.arrow_forward_ios_sharp,
                                                size: 10,
                                                color: Color(0XFFFFFFFF),
                                              )),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 7, bottom: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.4,
                          height: MediaQuery.of(context).size.height * 0.22,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0XFF9096AF).withOpacity(0.3),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        'assets/rupeeslogo.png',
                                        height:
                                            MediaQuery.of(context).size.height /
                                                34,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Payment Due',
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:"Montserrat",
                                                color: Color(0XFF414A53)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '20352',
                                  style: TextStyle(
                                      fontSize: 22,fontWeight: FontWeight.w600,
                                      fontFamily:"Montserrat",color: Color(0XFF29ABE2)),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    height:
                                        MediaQuery.of(context).size.height / 23,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'View All',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              fontFamily:"Montserrat",
                                              color: Color(0XFFFFFFFF)),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios_sharp,
                                              size: 10,
                                              color: Color(0XFFFFFFFF),
                                            )),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 7, bottom: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.4,
                          height: MediaQuery.of(context).size.height * 0.22,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0XFF9096AF).withOpacity(0.3),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        'assets/querylogo.png',
                                        height:
                                            MediaQuery.of(context).size.height /
                                                34,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'New Queries',
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:"Montserrat",
                                                color: Color(0XFF414A53)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '16',
                                  style: TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.w600,
                                      fontFamily:"Montserrat",color: Color(0XFF29ABE2)),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      height:
                                          MediaQuery.of(context).size.height / 23,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'View All',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                fontFamily:"Montserrat",
                                                color: Color(0XFFFFFFFF)),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.arrow_forward_ios_sharp,
                                                size: 10,
                                                color: Color(0XFFFFFFFF),
                                              )),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
