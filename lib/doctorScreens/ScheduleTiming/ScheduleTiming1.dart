import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pmc_mobile_app/Utils/Colors.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleTiming1 extends StatefulWidget {
  const ScheduleTiming1({Key? key}) : super(key: key);

  @override
  _ScheduleTiming1State createState() => _ScheduleTiming1State();
}

class _ScheduleTiming1State extends State<ScheduleTiming1> {

  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,

        leadingWidth: (MediaQuery.of(context).size.width/6.5),
        backgroundColor: Colors.white,

        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text("Schedule Timing",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: ColorBlack)),
        ),

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () => {
                Navigator.of(context).pop(),
              },
              child:     Container(
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1.0,
                        spreadRadius: 1.0, //extend the shadow
                      ),
                    ]),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: ColorBlueblue,
                ),
              ),),
        ),

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        backgroundColor: ColorBlueblue,
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder:(context)=>MedicationAdviceSlider()));
        },
        label:  Text(
          "Create Schedule",
          style: TextStyle(fontFamily:"Montserrat",fontWeight:FontWeight.w600,
              fontSize: 14, color: whiteColor),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: SingleChildScrollView(

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Align(
                    alignment: Alignment.center,
                    child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        runSpacing: 10,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.80 ,
                            child: TableCalendar(
                              rowHeight: 40,
                              calendarFormat: CalendarFormat.month,
                              firstDay: DateTime.utc(2022, 1, 1),
                              lastDay: DateTime.utc(2030, 3, 14),
                              focusedDay: _focusedDay,
                              calendarStyle: CalendarStyle(
                                  markerSize: 25,
                                  markerSizeScale: 20,
                                  selectedDecoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorLightBlue)),
                              headerStyle: HeaderStyle(
                                titleTextStyle: TextStyle(
                                  fontSize: 18,
                                  color: ColorLightBlue,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                ),
                                formatButtonVisible: false,
                                titleCentered: true,
                                leftChevronIcon: Icon(
                                  Icons.chevron_left,
                                  color: ColorLightBlue,
                                ),
                                rightChevronIcon: Icon(
                                  Icons.chevron_right,
                                  color: ColorLightBlue,
                                ),
                              ),
                              selectedDayPredicate: (day) =>
                                  isSameDay(day, _selectedDay),
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  _focusedDay = focusedDay;
                                  _selectedDay = selectedDay;
                                });
                                //fetchBookingSlots(selectedDay);
                              },
                            ),
                          ),

                        ]),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                  Text("Morning Schedule",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: ColorBlack)),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  Container(
                    height: MediaQuery.of(context).size.height*0.07 ,
                    width: MediaQuery.of(context).size.width ,
                    child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:11,
                        itemBuilder: (context, index) {
                          return  Row(
                              children:[
                                Wrap(
                                    direction: Axis.horizontal ,
                                    spacing: 5,
                                    children:[
                                      Chip(label: Text('09:00 AM',
                                          style: TextStyle(
                                              fontFamily:"Montserrat",
                                              color: whiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14)),
                                        backgroundColor: ColorBlueblue,
                                      ),

                                      Chip(label: Text('09:30 AM',
                                          style: TextStyle(
                                              fontFamily:"Montserrat",
                                              color: ColorBlack,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14)),
                                        backgroundColor: ColorEffect,
                                      ),
                                      Chip(
                                        label: Text('10:00 PM',

                                            style: TextStyle(
                                                fontFamily:"Montserrat",
                                                color: ColorBlack  ,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14)),

                                        side: BorderSide(
                                          width: 1,
                                          color: ColorBlueblue,
                                        ),
                                        backgroundColor: whiteColor,
                                      ),

                                      SizedBox(width: MediaQuery.of(context).size.width*0.01,)

                                    ]
                                ),
                              ]   );
                        }
                    ),


                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),

                  Text("Afternoon Schedule",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: ColorBlack)),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: MediaQuery.of(context).size.width ,
                    child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:11,
                        itemBuilder: (context, index) {
                          return  Row(
                              children:[
                                Wrap(
                                    direction: Axis.horizontal ,
                                    spacing: 5,
                                    children:[
                                      Chip(label: Text('12:30 PM',
                                          style: TextStyle(
                                              fontFamily:"Montserrat",
                                              color: whiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14)),
                                        backgroundColor: ColorBlueblue,
                                      ),

                                      Chip(label: Text('01:00 PM',
                                          style: TextStyle(
                                              fontFamily:"Montserrat",
                                              color: ColorBlack,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14)),
                                        backgroundColor: ColorEffect,
                                      ),
                                      Chip(
                                        label: Text('01:30 PM',

                                            style: TextStyle(
                                                fontFamily:"Montserrat",
                                                color: ColorBlack  ,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14)),

                                        side: BorderSide(
                                          width: 1,
                                          color: ColorBlueblue,
                                        ),
                                        backgroundColor: whiteColor,
                                      ),

                                      SizedBox(width: MediaQuery.of(context).size.width*0.01,)

                                    ]
                                ),
                              ]   );
                        }
                    ),


                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),

                  Text("Evening Schedule",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: ColorBlack)),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),

                  Container(
                    height: MediaQuery.of(context).size.height*0.075 ,
                    width: MediaQuery.of(context).size.width ,
                    child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:11,
                        itemBuilder: (context, index) {
                          return  Wrap(
                              direction: Axis.horizontal ,
                              spacing: 5,
                              children:[
                                Chip(label: Text('04:00 AM',
                                    style: TextStyle(
                                        fontFamily:"Montserrat",
                                        color: whiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14)),
                                  backgroundColor: ColorBlueblue,
                                ),

                                Chip(label: Text('04:30 PM',
                                    style: TextStyle(
                                        fontFamily:"Montserrat",
                                        color: ColorBlack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                                  backgroundColor: ColorEffect,
                                ),
                                Chip(
                                  label: Text('05:00 PM',

                                      style: TextStyle(
                                          fontFamily:"Montserrat",
                                          color: ColorBlack  ,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),

                                  side: BorderSide(
                                    width: 1,
                                    color: ColorBlueblue,
                                  ),
                                  backgroundColor: whiteColor,
                                ),

                                SizedBox(width: MediaQuery.of(context).size.width*0.01,),

                              ]
                          );
                        }
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Schedule",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: ColorBlack)),

                      Text("View All",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: ColorBlueblue)),
                    ],
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),

                  Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black12,
                            blurRadius: 1.0,
                            spreadRadius: 1.0, //extend the shadow
                          ),
                        ]),

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'WeekDay (Mon-Fri) Schedule',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    color: ColorDarkBlue),
                              ),

                              FlutterSwitch(
                                height: 20.0,
                                width: 40.0,
                                padding: 4.0,
                                toggleSize: 15.0,

                                borderRadius: 10.0,
                                activeColor: Colors.blue,
                                value: isSwitched,
                                onToggle: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                              ),


                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Shift Time	 :',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                          color: BluishGrey),
                                    ),
                                    Text(
                                      '09:00 AM - 12:00 Noon',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: ColorBlack),
                                    ),
                                    Text(
                                      '04:30 PM - 8:00 PM',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: ColorBlack),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Start Date :',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Montserrat",
                                            color: BluishGrey),
                                      ),
                                      Text(
                                        'April 20 2020',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Montserrat",
                                            color: ColorBlack),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Break :',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: BluishGrey),
                                    ),
                                    Text(
                                      '00 Mins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: ColorBlack),
                                    ),
                                    Text(
                                      '05 Mins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: ColorBlack),
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Consultation Time	 :',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: BluishGrey),
                                    ),
                                    Text(
                                      '20 Mins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: ColorBlack),
                                    ),
                                    Text(
                                      '20 Mins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat",
                                          color: ColorBlack),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                          onTap: () => {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(builder: (context) =>MySchedules()),
                                          // )
                                          },
                                          child:  Column(
                                              mainAxisSize: MainAxisSize.min ,
                                              children: [
                                                Icon(Icons.remove_red_eye_outlined,color: Colors.lightBlue,),
                                                Text(
                                                  'View/Edit',
                                                  style: TextStyle(
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: "Montserrat",
                                                      color: BluishGrey),
                                                )

                                              ])),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                      onTap: () => {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) =>MySchedules()),
                                        // )
                                      },
                                      child:  Column(
                                          mainAxisSize: MainAxisSize.min ,
                                          children: [
                                            Icon(Icons.delete_forever_outlined,color: ColorRed,),

                                            Text(
                                              'Delete',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Montserrat",
                                                  color: BluishGrey),
                                            ),

                                          ])),
                                ),
                              ],
                            ),

                          )
                        ]),


                  ),

                ]),
          ),
        ),
      ),

    );
  }
}
