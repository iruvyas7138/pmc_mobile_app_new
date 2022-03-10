import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pmc_mobile_app/Utils/Colors.dart';

class MySchedules extends StatefulWidget {
  const MySchedules({Key? key}) : super(key: key);

  @override
  _MySchedulesState createState() => _MySchedulesState();
}

class _MySchedulesState extends State<MySchedules> {

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
            child: Text("My Schedules",
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
                 children: [

                   Container(

                     height: MediaQuery.of(context).size.height /1.3,
                     width: MediaQuery.of(context).size.width ,

                     child: ListView.builder(
                         scrollDirection: Axis.vertical,
                         itemCount:11,
                         itemBuilder: (context, index) {
                           return  Column(
                             children: [
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

                                       Row(
                                         children: [

                                           Column(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [

                                               Padding(
                                                 padding: const EdgeInsets.all(8.0),
                                                 child: GestureDetector(
                                                     onTap: () => {
                                                       Navigator.push(
                                                         context,
                                                         MaterialPageRoute(builder: (context) =>MySchedules()),
                                                       )
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
                                                   Navigator.push(
                                                     context,
                                                     MaterialPageRoute(builder: (context) =>MySchedules()),
                                                   )
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
                                       )
                                     ]),


                               ),


                               SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                             ],
                           );
                         }
                     ),
                   ),


                 ],
               ),

              ),


            )
        )
    );
  }
}
