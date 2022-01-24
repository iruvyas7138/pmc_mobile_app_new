import 'package:flutter/material.dart';

import 'customDialog.dart';

class selectSymptomPage extends StatefulWidget {
  @override
  selectSymptomPageState createState() => selectSymptomPageState();
}
class selectSymptomPageState extends State<selectSymptomPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          child: SafeArea(
          child: Stack(
            children :[
              Container(
                child:
                  ElevatedButton(

                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return CustomAlertDialog();
                      },
                    );
                  },
                  child: Text('Symptoms'),
                ),
      ),


            ]
          )
      )
      ),
    );

  }
}