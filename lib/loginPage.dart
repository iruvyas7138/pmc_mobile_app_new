import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/registrationPage.dart';
import 'forgotPasswordPage.dart';
import 'listOfDoctors.dart';

class loginPage extends StatefulWidget {
  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State<loginPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [

              Positioned(
                  top: MediaQuery.of(context).size.height *0.02,
                  child : Container(
                    height: MediaQuery.of(context).size.height /3,
                    child: Image(image: AssetImage("assets/login_screen_logo.png"),
                      fit : BoxFit.contain,
                    ),
                  )
              ),

              Positioned(
                left: MediaQuery.of(context).size.width * 0.08,
                top : MediaQuery.of(context).size.height * 0.35,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Login" , style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
                ),
              ),

              Positioned(
                top: MediaQuery.of(context).size.height * 0.40,
                height: MediaQuery.of(context).size.height /3,
                child: Container(
                    width: MediaQuery.of(context).size.width ,
                  child: Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 4),
                      child: Form(
                        key : _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment : CrossAxisAlignment.center, children: [
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty && value.length == 10 && !RegExp(r'^[+91]*[0-9]+$').hasMatch(value)) {
                                  return 'Please enter correct phone number';
                                }
                                return null;
                              },

                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                prefixIcon: Icon(Icons.phone_outlined ),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),
                            ),


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
                                prefixIcon: Icon(Icons.lock_outline),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),

                            ),
                          ],
                        ),
                      ))


                ),
              ),

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.67,
                      right: MediaQuery.of(context).size.width * 0.02,
                      child:TextButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => forgotPasswordPage()),
                            );
                            print("forgot password !");
                          },
                          child: RichText(
                              text : TextSpan (
                                children: [

                                  TextSpan (
                                    text: " Forgot Password",
                                    style: TextStyle(color :Colors.blue , fontSize: 16 ,fontWeight  : FontWeight.w700),
                                  ),
                                ],
                              )
                          )
                      ),
                    ),

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.75,
                      child :TextButton(
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
                          if (_formKey.currentState!.validate()){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => listOfDoctorsPage()),
                            ),
                          },
                          print(emailController.value),
                          print(passwordController.value),
                        },
                        child: Text("Login",style: TextStyle(fontSize: 16 , color: Colors.white),),
                      ) ,

                    ),

              Positioned(
                  top : MediaQuery.of(context).size.height * 0.85,
                  child: Container(
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => registrationPage()),
                            );
                            print("register new account!");
                          },
                          child: RichText(
                              text :TextSpan (
                                children: [TextSpan(
                                  text: "Don't have an account",
                                  style: TextStyle(color :Colors.blueGrey , fontSize: 16 ,fontWeight: FontWeight.w700),),
                                  TextSpan (
                                    text: " Sign Up",
                                    style: TextStyle(color :Colors.blue , fontSize: 16 ,fontWeight  : FontWeight.w700),
                                  ),
                                ],
                              ),
                          ),
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