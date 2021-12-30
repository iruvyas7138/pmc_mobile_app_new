import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resetPasswordPage extends StatefulWidget {
  @override
    resetPasswordPageState createState() => resetPasswordPageState();
}

class resetPasswordPageState extends State<resetPasswordPage> {

  TextEditingController forgotpasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [

              Positioned(
                  top: MediaQuery.of(context).size.height *0.05,
                  child : Container(
                    height: MediaQuery.of(context).size.height /3,
                    child: Image(image: AssetImage("assets/login_screen_logo.png"),
                      fit : BoxFit.contain,
                    ),
                  )
              ),

              Positioned(
                left: MediaQuery.of(context).size.width * 0.08,
                top : MediaQuery.of(context).size.height * 0.43,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Reset Password" , style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
                ),
              ),

              Positioned(
                top: MediaQuery.of(context).size.height * 0.52,
                child: Container(
                  height : 170,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(14))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                        controller: forgotpasswordController,
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(14))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                        controller: forgotpasswordController,
                      ),

                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                          fixedSize:
                          MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width*0.8, 40)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              )),
                        ),
                        onPressed: () => {
                          print(forgotpasswordController.value),

                        },
                        child: Text("Submit",style: TextStyle(fontSize: 16 , color: Colors.white),),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}