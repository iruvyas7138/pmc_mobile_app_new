import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/registrationPage.dart';
import 'package:pmc_mobile_app/resetPasswordPage.dart';
import 'forgotPasswordPage.dart';
import 'listOfDoctors.dart';

class otpVerificationPage extends StatefulWidget {
  @override
  otpVerificationPageState createState() => otpVerificationPageState();
}

class otpVerificationPageState extends State<otpVerificationPage> {
  TextEditingController otpController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [

              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: AppBar(
                  title: Text(''),// You can add title here
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back_ios, color: Colors.lightBlueAccent),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.blue.withOpacity(0.0), //You can make this transparent
                  elevation: 0.0, //No shadow
                ),),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.06,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image(
                      image: AssetImage("assets/otp_verification_logo.png"),
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.10,
                top: MediaQuery.of(context).size.height * 0.40,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "OTP Verification",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                left: MediaQuery.of(context).size.width * 0.08,
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registrationPage()),
                      );
                      print("otp submitted");
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Enter OTP sent to",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: " +91 1234567890",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.54,
                width : MediaQuery.of(context).size.width * 0.8,

                child: Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: true),],
                      )

                    ],
                  ),
                ),
              ),
              Positioned(

                top: MediaQuery.of(context).size.height * 0.68,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.lightBlue),
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width * 0.8, 40)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )),
                  ),
                  onPressed: () {

                   // print(otpController.value);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => resetPasswordPage()),
                    );
                    print("otp submitted");
                  },

                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.80,
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resetPasswordPage()),
                      );
                      print("otp submitted");
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Didn’t receive the OTP?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: " Resend Code",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
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

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
        height: MediaQuery.of(context).size.height / 10,
        child: AspectRatio(
          aspectRatio: 0.8,
          child: TextField(
              autofocus: true,
              onChanged: (value) {
                if (value.length == 1 && last == false) {
                  FocusScope.of(context).nextFocus();
                }
                if (value.length == 0 && first == false) {
                  FocusScope.of(context).previousFocus();
                }
              },
              showCursor: true,
              readOnly: false,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: InputDecoration(
                  counter: Offstage(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black12),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(12)))),
        ));
  }
}
