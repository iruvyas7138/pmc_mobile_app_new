import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

          child: Stack(
            children: <Widget>[
              Container(
                  child: Expanded(

                    flex:5,
                    child: AlertDialog(
                      title: Text('Select your Symptoms'),
                      content: Container(
                          height: MediaQuery.of(context).size.height /3,
                          width: MediaQuery.of(context).size.width,
                          child: Flexible(
                            flex:10,
                            child: Column(
                              children: [
                                Row(children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(
                                                  Colors.white),
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
                                              style: TextStyle(
                                                  fontSize: 10, color: Colors.blueGrey))),
                                    ),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                ],),

                                Row(children: [
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                ],),

                                Row(children: [
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                  Container(

                                    padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                    child: ElevatedButton(

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(
                                                Colors.white),
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
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.blueGrey))),
                                  ),
                                ],),

                              ],
                            ),
                          )


                      ),
                      actions: [

                        Column(
                          children: [

                            Row(
                                children: [

                                  Flexible(
                                    child: Container(
                                      height: MediaQuery.of(context).size.height /9,
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.60,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Type Symptom & Click on ‘Add’ Button",
                                          hintStyle: TextStyle(fontSize: 12),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(14))),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 5.0),
                                        ),

                                      ),
                                    ),
                                  ),


                                  Container(
                                    width: MediaQuery.of(context).size.width / 7,

                                    child: TextButton(
                                      onPressed: () {
                                        print('symptom added');
                                      },
                                      child: Text('+Add'),

                                    ),
                                  ),


                                ]
                            ),
                            Container(

                              width: MediaQuery.of(context).size.width / 3,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              side: BorderSide(
                                                  color: Colors.blue)))),
                                  onPressed: () {
                                    print('symptoms selected for Appointment');
                                  },
                                  child: Text('Continue',
                                      style: TextStyle(fontSize: 10))),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),


              Positioned(

                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.08,

                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 14.0,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.close, color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );

  }
}