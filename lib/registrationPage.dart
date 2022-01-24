import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/loginPage.dart';

class registrationPage extends StatefulWidget {
  @override
  registrationPageState createState() => registrationPageState();
}

class registrationPageState extends State<registrationPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmpasswordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor:
            Colors.blue.withOpacity(0.0), //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: Container(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.00,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    child: Image(
                      image: AssetImage("assets/registration_screen_logo.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.13,
                left: MediaQuery.of(context).size.width * 0.08,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.16,
                child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: phoneController,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length != 10 &&
                                      !RegExp(r'^[+91]*[0-9]+$')
                                          .hasMatch(value)) {
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
                                  vertical: 5.0, horizontal: 10.0),
                            ),
                          ),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
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
                                    vertical: 2.0, horizontal: 10.0)),
                          ),
                          TextFormField(
                            controller: confirmpasswordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter confirm password';
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
                                    vertical: 5.0, horizontal: 10.0)),
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
                                    vertical: 5.0, horizontal: 10.0)),
                          ),
                        ],
                      ),
                    )),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.64,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightBlue),
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(MediaQuery.of(context).size.width * 0.9, 20)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        )),
                      ),
                      onPressed: () => {
                        if (_formKey.currentState!.validate())
                          {
                            print('enter all feilds!'),
                            if ((passwordController.value) ==
                                (confirmpasswordController.value))
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginPage()),
                                ),
                              }
                            else
                              {
                                print('Please enter same password'),
                              }
                          },
                      },
                      child: Text(
                        "Create",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print("New User");
                        },
                        child: RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Are you a doctor?",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: " Click here",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ))),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()),
                          );
                          print("Already a member !");
                        },
                        child: RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already a member? ",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: " Login",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
