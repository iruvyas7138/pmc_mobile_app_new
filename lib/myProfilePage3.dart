import 'package:flutter/material.dart';

class myProfilePage3 extends StatefulWidget {
  @override
  myProfilePage3State createState() => myProfilePage3State();
}

class myProfilePage3State extends State<myProfilePage3> {

  int _value = 1;
  bool value = false;

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
                  'Step 2 of 4',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Text(
                  'Health Issues/ Risks',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),

              Column(
                children: [
                      CheckboxListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Hypertension'),
                        value: value,
                        onChanged: ( newValue) {
                          setState(() {
                            value = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),

                      CheckboxListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Asthama'),
                        value: value,
                        onChanged: ( newValue) {
                          setState(() {
                            value = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                child:

                TextFormField(

                  decoration: InputDecoration(
                    hoverColor: Colors.blue,
                    hintText: "Others",
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(14))),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Text(
                  'Preferences',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),

              Column(
                children: [
                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text('Hypertension'),
                    value: value,
                    onChanged: ( newValue) {
                      setState(() {
                        value = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),

                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text('Asthama'),
                    value: value,
                    onChanged: ( newValue) {
                      setState(() {
                        value = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                child:TextFormField(

                  decoration: InputDecoration(
                    hoverColor: Colors.blue,
                    hintText: "Others",
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(14))),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Text(
                  'Allergic Condition',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),

              Column(
                children: [
                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text('Hypertension'),
                    value: value,
                    onChanged: ( newValue) {
                      setState(() {
                        value = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),

                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text('Asthama'),
                    value: value,
                    onChanged: ( newValue) {
                      setState(() {
                        value = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(5, 3, 5, 5),
                child:TextFormField(

                  decoration: InputDecoration(
                    hoverColor: Colors.blue,
                    hintText: "Others",
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(14))),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                  ),
                ),
              ),

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    width: MediaQuery.of(context).size.width *0.45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize:
                        MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width, 40)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.blue),
                              borderRadius: BorderRadius.circular(14),
                            )),
                      ),
                      onPressed: () {
                        print('back step');
                      },
                      child: Text("Back",style: TextStyle(fontSize: 16 , color: Colors.blue),),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    width: MediaQuery.of(context).size.width *0.45,
                    child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                      fixedSize:
                      MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width, 40)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          )),
                    ),
                    onPressed: () {
                      print('next step 3');
                    },
                    child: Text("Next",style: TextStyle(fontSize: 16 , color: Colors.white),),
                ),
                  ),
                ]
              ),


            ]),
          ),
        ),
      ),
    );
  }
}
