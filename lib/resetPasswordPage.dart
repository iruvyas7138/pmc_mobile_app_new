import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';
import 'otpVerificationPage.dart';

class resetPasswordPage extends StatefulWidget {
  @override
    resetPasswordPageState createState() => resetPasswordPageState();
}

class resetPasswordPageState extends State<resetPasswordPage> {

  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmpasswordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: AppBar(
                  title: Text(''),// You can add title here
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.blue.withOpacity(0.0), //You can make this transparent
                  elevation: 0.0, //No shadow
                ),),

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
                  height : MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty ) {
                              return 'Please enter correct password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),

                        ),

                        TextFormField(
                          controller: confirmpasswordController,
                          validator: (value) {
                            if ((passwordController.value)!=(confirmpasswordController.value)  ) {
                                return 'Please enter same password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
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
                          onPressed: () {
                            if (_formKey.currentState!.validate()){
                              if((passwordController.value) == (confirmpasswordController.value)){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => loginPage()),
                                );
                              }else
                              {
                                return print('Please enter same password');

                              }
                            };
                            print(passwordController.value);
                            print(confirmpasswordController.value);
                          },
                          child: Text("Submit",style: TextStyle(fontSize: 16 , color: Colors.white),),
                        ),

                      ],
                    ),
                  )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}