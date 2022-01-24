import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/loginPage.dart';
import 'package:pmc_mobile_app/resetPasswordPage.dart';

import 'otpVerificationPage.dart';

class forgotPasswordPage extends StatefulWidget {
  @override
  forgotPasswordPageState createState() => forgotPasswordPageState();
}

class forgotPasswordPageState extends State<forgotPasswordPage> {

  final _formKey = GlobalKey<FormState>();

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
                  child: Text("Forgot Password" , style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
                ),
              ),

              Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                child: Container(
                  height : 120,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Form(

                    key : _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(

                          controller: forgotpasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty && value.length != 10 && !RegExp(r'^[+91]*[0-9]+$').hasMatch(value)) {
                              return 'Please enter correct phone number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),

                        ),
                      ],
                    ),
                  )
                ),
              ),

              Positioned(
                  top : MediaQuery.of(context).size.height * 0.70,
                  child: Column(children: [
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
                      onPressed: (){
                        if (_formKey.currentState!.validate()){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => otpVerificationPage()),
                          );
                        };
                        print(forgotpasswordController.value);

                        print("reset password !");
                      },
                      child: Text("Get OTP",style: TextStyle(fontSize: 16 , color: Colors.white),),
                    ),

                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => loginPage()),
                          );
                          print("generate OTP !");
                        },
                        child: RichText(
                            text :TextSpan (
                              children: [TextSpan(
                                text: "Remember Password? ",
                                style: TextStyle(color :Colors.blueGrey , fontSize: 16 ,fontWeight: FontWeight.w700),),
                                TextSpan (
                                  text: " Login",
                                  style: TextStyle(color :Colors.blue , fontSize: 16 ,fontWeight  : FontWeight.w700),
                                ),
                              ],
                            )
                        )
                    )

                  ],)

                  )

            ],
          ),
        ),
      ),
    );
  }
}