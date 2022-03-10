import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/doctorScreens/doctorHamburger.dart';

class Appointments extends StatefulWidget {
  @override
  AppointmentsState createState() => AppointmentsState();
}

class AppointmentsState extends State<Appointments> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('All Appointments',
                  style: TextStyle(
                      fontFamily:"Montserrat",
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF414A53))), // You can add title here
              leading: new IconButton(
                hoverColor:Color(0XFF2495C2),
                icon: new Icon(Icons.menu, color: Color(0XFF2495C4)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => doctorappDrawer()));
                }
              ),
              backgroundColor:
              Colors.transparent,
              elevation: 0.0,
            ),

            body: Container(
              height: MediaQuery.of(context).size.height*0.75,

              child: Column(
                children: [
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        width: MediaQuery.of(context).size.width*0.75,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10 , 10, 10, 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0XFF2495C4),
                                size: 25.0,
                              ),
                             Text('Search Doctors',
                                  style: TextStyle(
                                    fontFamily:"Montserrat",fontSize:12,
                                    fontWeight: FontWeight.w500,color: Color(0XFF9096AF),),
                                ),

                            ],
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: IconButton(
                          onPressed:(){},
                          icon:Icon(Icons.filter_alt_outlined,size: 25.0,),

                          color: Color(0XFF2495C4),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                      child: Container(
                          decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(9),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0, //extend the shadow
                                ),
                              ]
                          ),
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,5,5,0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                               Container(
                                                  width: MediaQuery.of(context).size.width / 7,
                                                  height: MediaQuery.of(context).size.height / 16,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black12,
                                                          blurRadius: 1.0,
                                                          spreadRadius: 1.0, //extend the shadow
                                                        ),
                                                      ]),
                                                ),



                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                 crossAxisAlignment:CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Daisy Black",
                                                      style: TextStyle(
                                                          fontSize:14,
                                                          fontFamily:"Montserrat",
                                                          fontWeight: FontWeight.w700,
                                                          color: Color(0XFFFFFFFF)),
                                                    ),


                                                    Text(
                                                      "Female | 24 Years",
                                                      style: TextStyle(
                                                          fontSize:10,
                                                          fontFamily:"Montserrat",
                                                          fontWeight: FontWeight.w500,
                                                          color: Color(0XFFFFFFFF)),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          // SizedBox(
                                          //   height: 20.0,
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              children: [
                                                 Container(
                                                    width: MediaQuery.of(context).size.width / 2.2,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(10),
                                                            topRight: Radius.circular(10),
                                                            bottomLeft: Radius.circular(10),
                                                            bottomRight: Radius.circular(10)),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black12,
                                                            blurRadius: 1.0,
                                                            spreadRadius: 1.0, //extend the shadow
                                                          ),
                                                        ]),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.calendar_today_rounded,
                                                            color:Color(0XFFFFFFFF),
                                                          ),
                                                       Column(
                                                              children: [
                                                                Text('Tuesday, January 11, 2022',style:TextStyle(
                                                                      fontWeight: FontWeight.w500,fontFamily:"Montserrat",
                                                                      fontSize:10,color: Color(0XFFFFFFFF)),),
                                                                 Text('4:15 PM',style:TextStyle(
                                                                      fontWeight: FontWeight.w500,fontFamily:"Montserrat",
                                                                      fontSize:10,color: Color(0XFFFFFFFF),),)

                                                              ],
                                                            ),

                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height / 5.8,
                                      width: MediaQuery.of(context).size.width / 3.2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          border:
                                          Border.all(color: Color(0xFF29ABE2), width: 2.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 1.0,
                                              spreadRadius: 1.0, //extend the shadow
                                            ),
                                          ]),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          // SizedBox(
                                          //   height: 4.0,
                                          // ),
                                          Text(
                                            "Next Consulation:",
                                            style: TextStyle(
                                                fontSize:10,fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w500,
                                                color: Color(0XFF9096AF)),
                                          ),
                                          // SizedBox(
                                          //   height: 4.0,
                                          // ),
                                          Text("0.10:00:00s",
                                            style: TextStyle(
                                                fontSize:18,fontFamily:"Montserrat",
                                                fontWeight:FontWeight.w600,
                                                color: Color(0XFF2495C4)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  //getUpcomingAppointment();
                                                  //  getConsultedDoctorList();
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all(
                                                    Color(0xFF29ABE2),
                                                  ),
                                                  foregroundColor:
                                                  MaterialStateProperty.all(Color(0XFFFFFFFF)),
                                                  shape:
                                                  MaterialStateProperty.all<OutlinedBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      )),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Icon(Icons.video_call_outlined),
                                                    Text("Join",
                                                        style: TextStyle(fontFamily:"Montserrat",
                                                            color: Color(0XFFFFFFFF), fontSize: 16)),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ))
                  ),

                  SizedBox(
                    height: 50,
                    child: AppBar(
                      backgroundColor:
                      Colors.transparent,
                      elevation: 0.0,

                      bottom: TabBar(
                        labelColor: Color(0XFF29ABE2),
                        indicatorColor: Color(0XFF29ABE2),
                        unselectedLabelColor: Color(0XFF9096AF),
                        tabs: [

                          Tab(
                            child: Text('Upcoming',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,fontFamily:"Montserrat",
                              ),),
                          ),
                          Tab(
                            child: Text('Completed',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,fontFamily:"Montserrat",
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // create widgets for each tab bar here
                  Expanded(
                    child: TabBarView(
                      children: [

                        Container(

                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount:11,
                              itemBuilder: (context, index) {
                                return  Container(
                                  padding: EdgeInsets.only(top:15),
                                  child:  Wrap(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                                            borderRadius: BorderRadius.circular(14),
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [

                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                          BorderRadius.circular(12.0),
                                                          child: Image(
                                                            image: AssetImage(
                                                              'assets/patientlogo.png',
                                                            ),
                                                            height: MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                                12,
                                                          ),
                                                        ),

                                                      ],),

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,

                                                        children: [
                                                               Text('Daisy Black',
                                                                style: TextStyle(
                                                                    fontSize:14,fontFamily:"Montserrat",
                                                                    fontWeight: FontWeight.w700,
                                                                    color: Color(0XFF2495C4)),
                                                          ),

                                                        ],),
                                                    ),

                                                  ],),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                  Icons.calendar_today_outlined,
                                                                  color: Color(0XFF9096AF),
                                                                  size: 16.0,
                                                                ),


                                                              Padding(
                                                                padding: const EdgeInsets.only(left:8.0),
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  crossAxisAlignment : CrossAxisAlignment.start,
                                                                  children: [
                                                                    Text('Tuesday, January 11, 2022',style:TextStyle(
                                                                          fontWeight: FontWeight.w500,fontFamily:"Montserrat",
                                                                          fontSize:10,color: Color(0XFF414A53)),),
                                                                    Text('4:15 PM',style:TextStyle(
                                                                          fontWeight: FontWeight.w500,fontFamily:"Montserrat",
                                                                          fontSize:10,color: Color(0XFF414A53),),)

                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],),

                                                      SizedBox(width: 95,),

                                                      Column(

                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                           Text('Status:',
                                                              style: TextStyle(
                                                                  fontSize: 8,fontFamily:"Montserrat",
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Color(0XFF9096AF)),),

                                                           Text('Ready',
                                                              style: TextStyle(
                                                                  fontSize: 10,fontFamily:"Montserrat",
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Color(0XFF414A53)),
                                                            ),

                                                        ],),


                                                    ],),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                      Text('Symptoms :',
                                                              style: TextStyle(
                                                                  fontSize: 8,fontFamily:"Montserrat",
                                                                  color: Color(0XFF9096AF)),),

                                                           Text('Black Gums, Swollen Gums	',
                                                              style: TextStyle(
                                                                  fontSize: 10,fontFamily:"Montserrat",
                                                                  color: Color(0XFF414A53),),

                                                          ),
                                                        ],),



                                                    ],),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ]   ),
                                );
                              }),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount:11,
                              itemBuilder: (context, index) {
                                return  Container(
                                    padding: EdgeInsets.only(top:15),
                                  child:  Wrap(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,

                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                                            borderRadius: BorderRadius.circular(14),
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment :MainAxisAlignment.spaceBetween ,
                                              children: [

                                                Row(
                                                  children: [
                                                    Column(

                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                          BorderRadius.circular(12.0),
                                                          child: Image(
                                                            image: AssetImage(
                                                              'assets/patientlogo.png',
                                                            ),
                                                            height: MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                                12,
                                                          ),
                                                        ),

                                                      ],),

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,

                                                        children: [

                                                              Text('Daisy Black',
                                                                style: TextStyle(
                                                                    fontSize:14,fontFamily:"Montserrat",
                                                                    fontWeight: FontWeight.w700,
                                                                    color: Color(0XFF2495C4)),),


                                                        ],),
                                                    ),

                                                  ],),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                             Icon(
                                                                  Icons.calendar_today_outlined,
                                                                  color: Color(0XFF9096AF),
                                                                  size: 16.0,
                                                                ),


                                                              Padding(
                                                                padding: const EdgeInsets.only(left:8.0),
                                                                child: Column(
                                                                  crossAxisAlignment : CrossAxisAlignment.start,
                                                                  children: [
                                                                    Text('Tuesday, January 11, 2022',style:TextStyle(
                                                                          fontWeight: FontWeight.w500,fontFamily:"Montserrat",
                                                                          fontSize:10,color: Color(0XFF414A53)),),

                                                                     Text('4:15 PM',style:TextStyle(
                                                                          fontWeight: FontWeight.w500,fontFamily:"Montserrat",
                                                                          fontSize:10,color: Color(0XFF414A53),),)

                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],),


                                                      SizedBox(width: 95,),

                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                           Text('Status:',
                                                              style: TextStyle(
                                                                  fontSize: 8,fontFamily:"Montserrat",
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Color(0XFF9096AF)),),

                                                           Text('Completed',
                                                              style: TextStyle(
                                                                  fontSize: 10,fontFamily:"Montserrat",
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Color(0XFF414A53)),
                                                            ),

                                                        ],),

                                                    ],),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Symptoms :',
                                                              style: TextStyle(
                                                                  fontSize: 8,fontFamily:"Montserrat",
                                                                  color: Color(0XFF9096AF)),),
                                                        Text('Black Gums, Swollen Gums	',
                                                              style: TextStyle(
                                                                  fontSize: 10,fontFamily:"Montserrat",
                                                                  color: Color(0XFF414A53)),
                                                            ),

                                                        ],),



                                                    ],),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ]
                                  ),
                                );
                              }
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
      ),
    );
  }
}