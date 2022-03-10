import 'dart:ui';
import 'package:flutter/material.dart';

class TreatmentHistory1 extends StatefulWidget {
  @override
  TreatmentHistory1State createState() => TreatmentHistory1State();
}

class TreatmentHistory1State extends State<TreatmentHistory1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: SafeArea(
          child:  Wrap(
            children:[
              Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Color(0XFF29ABE2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Treatment History",
                                  style: TextStyle(
                                      fontFamily:"Montserrat",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20, color: Color(0XFF414A53))),

                              SizedBox(height: 5,),

                              Text("Of : Daisy Black",
                                  style: TextStyle(
                                      fontFamily:"Montserrat",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14, color: Color(0XFF9096AF))),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox( height: MediaQuery.of(context).size.height*0.02),

                    Container(
                      alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Color(0XFF9096AF)),
                        ),
                      ),
                      child:

                          Text('23 December,2021',
                              style: TextStyle(
                                  fontFamily:"Montserrat",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20, color: Color(0XFF2495C4))
                          ),


                    ),


                    SizedBox( height: MediaQuery.of(context).size.height*0.02),

                  ]),

                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:11,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 5,),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,

                                child: Container(
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      border: Border.all(color: Colors.transparent, width: 0.5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.transparent,
                                          blurRadius: 3.0,
                                          spreadRadius: 1.0, //extend the shadow
                                        ),
                                      ]),
                                  child:
                                      Column(
                                        crossAxisAlignment : CrossAxisAlignment.start ,

                                        children: [
                                          Row(
                                            mainAxisAlignment : MainAxisAlignment.start ,
                                            children: [
                                              Column(
                                                  crossAxisAlignment : CrossAxisAlignment.start ,
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(12.0),
                                                        child: Image(
                                                          image: AssetImage('assets/doctor_logo.png',
                                                          ),
                                                          height: MediaQuery.of(context).size.height / 12,
                                                        ),
                                                      ),

                                                  ]),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                    crossAxisAlignment : CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                       Text('Doctor Name',
                                                            style: TextStyle(
                                                                fontFamily:"Montserrat",
                                                                fontWeight: FontWeight.w700,
                                                                color: Color(0XFF414A53))),

                                                      Text(
                                                            'Specialist',
                                                            style: TextStyle( fontFamily:"Montserrat",fontSize:12,fontWeight:FontWeight.w500,color: Color(0XFF414A53)),
                                                          ),
                                                      Row(
                                                        crossAxisAlignment : CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Icon(
                                                              Icons.access_time,
                                                              color: Color(0XFF9096AF),
                                                              size: 16.0,
                                                            ),


                                                           Text('4:15 PM - 4:25 PM',style: TextStyle(
                                                                fontFamily:"Montserrat",fontSize:12,
                                                                fontWeight:FontWeight.w500, color: Color(0XFF414A53)),),

                                                        ],
                                                      ),

                                                    ]),
                                              ),
                                              SizedBox(width:MediaQuery.of(context).size.width*0.060,),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children:
                                                [
                                                  TextButton(
                                                    style: TextButton.styleFrom(
                                                      textStyle: const TextStyle(fontFamily:"Montserrat",fontSize: 12),
                                                    ),
                                                    onPressed: (){
                                                      // Navigator.push(
                                                      //   context,
                                                      //   MaterialPageRoute(builder: (context) =>myTreatments2()),
                                                      // );
                                                    },
                                                    child:  Text('View In Detail',
                                                      style: TextStyle(fontSize: 12,
                                                          fontFamily:"Montserrat",
                                                          color: Color(0XFF29ABE2),
                                                          fontWeight: FontWeight.w700),
                                                    ),),

                                                  IconButton(
                                                    icon: const Icon(Icons.arrow_forward_ios_sharp ,size: 12,color :Color(0XFF29ABE2)),

                                                    onPressed: () {
                                                      // Navigator.push(
                                                      //   context,
                                                      //   MaterialPageRoute(builder: (context) =>myTreatments2()),
                                                      // );

                                                    },
                                                  ),

                                                ],),
                                            ],
                                          ),
                                        ],
                                      )


                                ),
                              ),
                              SizedBox(height: 20,)
                            ],
                          ),
                        );
                      }),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
