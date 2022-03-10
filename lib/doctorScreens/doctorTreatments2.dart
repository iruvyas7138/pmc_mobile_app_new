import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmc_mobile_app/patientScreens/medicineCustomDialog.dart';
import 'package:table_calendar/table_calendar.dart';

class TreatmentsHistory2 extends StatefulWidget {
  @override
  TreatmentsHistory2State createState() => TreatmentsHistory2State();
}

class TreatmentsHistory2State extends State<TreatmentsHistory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: GestureDetector(
              onTap: () {},
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_outlined),
                color: Color(0XFF29ABE2),
                onPressed: () {
                  Navigator.pop(context);
                  print('button back page');
                },
              ),
            )),

        backgroundColor:
        Colors.white.withOpacity(0.4), //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("Dr. Haley Lawrence",
                              style: TextStyle(fontFamily:"Montserrat",fontSize: 20,
                                  fontWeight: FontWeight.w700, color: Color(0XFF414A53))),

                          SizedBox(height: 5,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Icon(Icons.calendar_today_outlined,size: 15 ,color: Color(0XFF9096AF)),

                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text("Tuesday, January 11, 2022",
                                    style: TextStyle(
                                        fontFamily:"Montserrat",fontWeight:FontWeight.w600,
                                        fontSize: 11,color: Color(0XFF9096AF))),
                            ),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(height:20),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Clinical Examination',
                                style: TextStyle(
                                  fontSize: 18,fontFamily:"Montserrat",
                                  fontWeight: FontWeight.w600,
                                   color: Color(0XFF29ABE2),)),

                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             Text('Symtoms :',   style: TextStyle(
                                                  fontSize: 12,fontFamily:"Montserrat",
                                                 fontWeight: FontWeight.w500,   color: Color(0XFF9096AF)),),

                                            Text('Black Gums, Swollen Gums	', style: TextStyle(
                                                  fontSize: 12,fontFamily:"Montserrat",
                                                fontWeight: FontWeight.w500,color: Color(0XFF414A53)),
                                              ),

                                          ],),

                                      ],),

                                    Padding(
                                      padding: const EdgeInsets.only(top:5.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [

                                               Text('Clinical Findings:',   style: TextStyle(
                                                    fontSize: 12,fontFamily:"Montserrat",
                                                   fontWeight: FontWeight.w500, color: Color(0XFF9096AF)),),

                                              Text('Continually unleash technically '
                                                    'sound products before installed base opportunities.', style: TextStyle(
                                                    fontSize: 12,fontFamily:"Montserrat",
                                                  fontWeight: FontWeight.w500, color:Color(0XFF414A53)),
                                                ),

                                            ],),

                                        ],),
                                    ),

                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height:20),

                    Container(
                      width: MediaQuery.of(context).size.width,

                      decoration: BoxDecoration(
                        border: Border.all(

                            color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Medication',
                                style: TextStyle(
                                  fontSize: 16,fontFamily:"Montserrat",
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF29ABE2),)),

                            SizedBox(height:25),


                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.30,
                              child: ListView.builder(

                                  scrollDirection: Axis.vertical,
                                  itemCount:11,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0XFF29ABE2).withOpacity(0.6), width: 1.5),
                                            borderRadius: BorderRadius.circular(14),),
                                          child:Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [

                                                Icon(Icons.medical_services_outlined,size:35,color: Color(0XFF29ABE2),),
                                                SizedBox(height:10),

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Text('Sinarest',style: TextStyle(
                                                        fontSize:14,fontFamily:"Montserrat",
                                                        fontWeight:FontWeight.w600,color:Color(0XFF263238)),),

                                                    Text('2 tablets | 0-1-0 | After Food',
                                                      style: TextStyle(
                                                          fontSize:12,fontFamily:"Montserrat",
                                                          fontWeight:FontWeight.w500,color:Color(0XFF9096AF)),),


                                                  ],),

                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    IconButton(onPressed: ()
                                                    {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) =>MedicineDialog()),
                                                      );
                                                    },
                                                        icon:Icon(Icons.arrow_forward_ios_sharp,
                                                          size:35,color: Color(0XFF29ABE2),)),

                                                  ],)

                                              ],
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 10,),
                                      ],
                                    );

                                  }),
                            ),


                          ],
                        ),
                      ),
                    ),

                    SizedBox(height:20),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Advice',
                                style: TextStyle(
                                  fontSize: 16,fontFamily:"Montserrat",
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF29ABE2),)),

                            SizedBox(height:25),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                                      borderRadius: BorderRadius.circular(14),),
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Type :',   style: TextStyle(
                                                              fontSize: 10,fontFamily:"Montserrat",
                                                            fontWeight: FontWeight.w500, color: Color(0XFF9096AF)),),

                                                         Text('Follow Up', style: TextStyle(
                                                              fontSize: 12,fontFamily:"Montserrat",
                                                             fontWeight: FontWeight.w500,color:Color(0XFF414A53)),
                                                          ),

                                                      ],),

                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                         Text('Task Date:',   style: TextStyle(
                                                              fontSize: 10,fontFamily:"Montserrat",
                                                             fontWeight: FontWeight.w500, color: Color(0XFF9096AF)),),

                                                        Text('Dec 22, 2021', style: TextStyle(
                                                              fontSize: 12,fontFamily:"Montserrat",
                                                            fontWeight: FontWeight.w500, color:Color(0XFF414A53)),
                                                          ),

                                                      ],),

                                                  ],),

                                                Padding(
                                                  padding: const EdgeInsets.only(top:5),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [

                                                          Text('Advice:',   style: TextStyle(
                                                                fontSize: 10,fontFamily:"Montserrat",
                                                              fontWeight: FontWeight.w500, color:Color(0XFF9096AF)),),

                                                          Text('Continually unleash technically sound products before installed base opportunities. ', style: TextStyle(
                                                                fontSize: 12,fontFamily:"Montserrat",
                                                              fontWeight: FontWeight.w500,color: Color(0XFF414A53)),
                                                            ),

                                                        ],),

                                                    ],),
                                                ),

                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                            SizedBox(height:15),

                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0XFF9096AF).withOpacity(0.3), width: 1.5),
                                      borderRadius: BorderRadius.circular(14),
                                    ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                         Text('Type :',   style: TextStyle(
                                                              fontSize: 10,fontFamily:"Montserrat",
                                                             fontWeight: FontWeight.w500,color: Color(0XFF9096AF)),),

                                                        Text('Diet', style: TextStyle(
                                                              fontSize: 12,fontFamily:"Montserrat",
                                                            fontWeight: FontWeight.w500, color: Color(0XFF414A53)),
                                                          ),

                                                      ],),

                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                      Text('Task Date:',   style: TextStyle(
                                                              fontSize: 10,fontFamily:"Montserrat",
                                                          fontWeight: FontWeight.w500,color: Color(0XFF9096AF)),),

                                                        Text('Dec 22, 2021', style: TextStyle(
                                                              fontSize: 12,
                                                            fontFamily:"Montserrat",
                                                            fontWeight: FontWeight.w500, color:Color(0XFF414A53)),
                                                          ),

                                                      ],),

                                                  ],),

                                                Padding(
                                                  padding: const EdgeInsets.only(top:5),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                           Text('Advice:',   style: TextStyle(
                                                               fontFamily:"Montserrat",
                                                                fontSize: 10,
                                                               fontWeight: FontWeight.w500, color:Color(0XFF9096AF)),),

                                                           Text('Continually unleash technically sound products before installed base opportunities. ',
                                                             style: TextStyle(
                                                                 fontFamily:"Montserrat",
                                                                fontSize: 12,
                                                                 fontWeight: FontWeight.w500,color: Color(0XFF414A53)),
                                                            ),

                                                        ],),

                                                    ],),
                                                ),

                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                            SizedBox(height:15),

                          ],
                        ),
                      ),
                    ),



                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
