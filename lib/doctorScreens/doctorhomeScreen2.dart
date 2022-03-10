import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  HomeScreen2State createState() => HomeScreen2State();
}

class HomeScreen2State extends State<HomeScreen2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Container(
          padding: EdgeInsets.only(top: 10,left: 15,right: 15),
          height: MediaQuery.of(context).size.height*0.90,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          border:
                          Border.all(color: Colors.transparent, width: 2.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                              spreadRadius: 1.0, //extend the shadow
                            ),
                          ]),
                      child: Icon(
                        Icons.menu,
                        color: Color(0XFF29ABE2),
                      ),
                    ),
                    Text("Welcome",
                        style: TextStyle(
                          fontSize: 14,fontFamily:"Montserrat",
                          fontWeight:FontWeight.w500,color: Color(0XFF29ABE2),)),
                    CircleAvatar(
                      backgroundColor: Color(0XFF29ABE2),
                    ),
                  ],
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
                              fontSize: 12,
                              fontFamily:"Montserrat",
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
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                      borderRadius: BorderRadius.circular(14),
                    ),

                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/createschedulelogo.png',
                            height: MediaQuery.of(context).size.height / 8,
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
                                width: MediaQuery.of(context).size.width*0.45,
                                child: Column(
                                  children: [
                                    Text(
                                      'create your schedule to start receiving appointments.',
                                      style: TextStyle(fontSize:14,fontFamily:"Montserrat",
                                          fontWeight:FontWeight.w600,color: Color(0XFF29ABE2)),
                                    ),
                                    SizedBox(height: 5,),

                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                        fixedSize: MaterialStateProperty.all<Size>(
                                            Size(MediaQuery.of(context).size.width*0.30, 20)),
                                        shape: MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                              side: BorderSide(color: Color(0XFF29ABE2),width: 2.0),
                                              borderRadius: BorderRadius.circular(7),
                                            )),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        print('back step');
                                      },
                                      child: Text(
                                        "Create Schedule",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                          fontFamily:"Montserrat",
                                          color: Color(0XFF29ABE2),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Schedules',
                      style: TextStyle(
                          color: Color(0XFF414A53),
                          fontFamily:"Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text('See all',
                      style: TextStyle(
                          color: Color(0XFF29ABE2),
                          fontFamily:"Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 12),),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0XFF29ABE2),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(color: Color(0XFF29ABE2), width: 2.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                            spreadRadius: 1.0, //extend the shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/homescreenlogo.png',
                            height: MediaQuery.of(context).size.height / 10,
                          ),
                          Text(
                            'Oops! There is no appointment',
                            style: TextStyle(fontSize:14,fontFamily:"Montserrat",
                                fontWeight:FontWeight.w500,color:Color(0XFFFFFFFF)),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.4,
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
                                                fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w500,
                                                color: Color(0XFF414A53)),
                                          ),
                                          Text(
                                            'Appointments',
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w500,
                                                color: Color(0XFF414A53)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 22, fontFamily:"Montserrat",
                                      fontWeight:FontWeight.w600,color: Color(0XFF29ABE2)),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
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
                                                fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w700,
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
                                                fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w500,
                                                color: Color(0XFF414A53)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 22, fontFamily:"Montserrat",
                                      fontWeight:FontWeight.w600,color: Color(0XFF29ABE2)),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
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
                                              fontSize: 10,fontFamily:"Montserrat",
                                              fontWeight:FontWeight.w700,
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
                                                fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w500,
                                                color: Color(0XFF414A53)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 22, fontFamily:"Montserrat",
                                      fontWeight:FontWeight.w600,color: Color(0XFF29ABE2)),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
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
                                                fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w700,
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
