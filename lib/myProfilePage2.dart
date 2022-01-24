import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myProfilePage2 extends StatefulWidget {
  @override
  myProfilePage2State createState() => myProfilePage2State();
}

class myProfilePage2State extends State<myProfilePage2> {
  var group;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    color: Colors.blue,
                    onPressed: () {
                      print('button next page');
                    },
                  ),
                )),
          ]),
        ],
        backgroundColor:
            Colors.white.withOpacity(0.4), //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Text(
                  'Step 1 of 4',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Text(
                  'Basic Information',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Text(
                  'Gender*',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(

                      value: "Male",
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          this.group = T;
                        });
                      },
                    ),Text('Male'),
                    Radio(
                      value: "Female",
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          this.group = T;
                        });
                      },
                    ),Text('Female'),
                    Radio(
                      value: "Other",
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          this.group = T;
                        });
                      },
                    ),Text('Other'),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Full Name*",
                    hoverColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "1234567890",
                    hoverColor: Colors.blue,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hoverColor: Colors.blue,
                    hintText: "Email Id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.41,
                    padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hoverColor: Colors.blue,
                        hintText: "Date of Birth*",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Text('OR')),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.41,
                    padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hoverColor: Colors.blue,
                        hintText: "Age*",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.46,
                    padding: EdgeInsets.fromLTRB(5, 3, 10, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hoverColor: Colors.blue,
                        hintText: "Weight(lbs)",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.46,
                    padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hoverColor: Colors.blue,
                        hintText: "Height(cm)",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                      ),
                    ),
                  ),
                ],
              ),

              Column(

                children: [
                  Row(

                    children: [
                     Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
                                  child: Text(
                                    'Are you Athletic?',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ),
                                Row(


                                    children: [
                                      Radio(
                                        value: "Yes",
                                        groupValue: group,
                                        onChanged: (T) {
                                          print(T);
                                          setState(() {
                                            this.group = T;
                                          });
                                        },
                                      ),Text('Yes'),
                                      Radio(
                                        value: "No",
                                        groupValue: group,
                                        onChanged: (T) {
                                          print(T);
                                          setState(() {
                                            this.group = T;
                                          });
                                        },
                                      ),Text('No'),

                                    ],
                                  ),

                              ],
                            ),
                          ],
                        ),

                       Row(

                          children: [
                            Column(

                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 10, 20, 5),
                                  child: Text(
                                    'Marital Status',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ),
                                Row(

                                  children: [
                                    Radio(
                                      value: "Single",
                                      groupValue: group,
                                      onChanged: (T) {
                                        print(T);
                                        setState(() {
                                          this.group = T;
                                        });
                                      },
                                    ),Text('Single'),
                                    Radio(
                                      value: "Married",
                                      groupValue: group,
                                      onChanged: (T) {
                                        print(T);
                                        setState(() {
                                          this.group = T;
                                        });
                                      },
                                    ),Text('Married' ),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
                                  child: Text(
                                    'Do you Smoke?',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 10, 15, 5),
                                  child: Text(
                                    'Do you take Alcohol?',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
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
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.80,
                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Text(
                  'Blood Group*',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.lightBlue),
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width, 40)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )),
                  ),
                  onPressed: () {
                    print('next step 3');
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
