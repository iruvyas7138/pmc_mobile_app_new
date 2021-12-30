import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/loginPage.dart';

class registrationPage extends StatefulWidget {
  @override
  registrationPageState createState() => registrationPageState();
}

class registrationPageState extends State<registrationPage> {
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmpasswordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [

               Positioned(
                    top: MediaQuery.of(context).size.height *0.01,
                    child : Container(
                      height: MediaQuery.of(context).size.height /7,
                      child: Image(image: AssetImage("assets/registration_screen_logo.png"),
                        fit : BoxFit.contain,
                      ),
                    )
                ),

              Positioned(
                  top : MediaQuery.of(context).size.height * 0.16,
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Create Account" , style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
                  ),
              ),

              Positioned(
                top: MediaQuery.of(context).size.height * 0.24,
                child: Container(
                 height: 300,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(14))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                        controller: phoneController,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0)),
                      ),

                      TextFormField(
                        controller: confirmpasswordController,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0)),
                      ),

                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email ID (Optional)",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0)),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue),
                          fixedSize:
                          MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width*0.9, 20)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              )),
                        ),
                        onPressed: () => {
                          print(phoneController.value),
                          print(passwordController.value),
                          print(confirmpasswordController.value),
                          print(emailController.value),

                        },
                        child: Text("Create",style: TextStyle(fontSize: 16 , color: Colors.white),),
                      ),

                    ],
                  ),
                ),
              ),

              Positioned(
                top : MediaQuery.of(context).size.height * 0.75,
                  child: Container(

                    child: TextButton(
                      onPressed: (){
                        print("New User");
                      },
                      child: RichText(
                        text :TextSpan (
                          children: [TextSpan(
                            text: "Are you a doctor?",
                            style: TextStyle(color :Colors.blueGrey , fontSize: 16 ,fontWeight: FontWeight.w700),),
                            TextSpan (
                              text: " Click here",
                              style: TextStyle(color :Colors.blue , fontSize: 16 ,fontWeight: FontWeight.w700),
                            ),
                          ],
                      )
                    )
                  )
              )
              ),

              Positioned(
                  top : MediaQuery.of(context).size.height * 0.80,
                  child: Container(
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => loginPage()),
                            );
                            print("Already a member !");
                          },
                          child: RichText(
                              text :TextSpan (
                                children: [TextSpan(
                                  text: "Already a member? ",
                                  style: TextStyle(color :Colors.blueGrey , fontSize: 16 ,fontWeight: FontWeight.w700),),
                                  TextSpan (
                                    text: " Login",
                                    style: TextStyle(color :Colors.blue , fontSize: 16 ,fontWeight  : FontWeight.w700),
                                  ),
                                ],
                              )
                          )
                      )
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}