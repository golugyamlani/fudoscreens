import 'package:flutter/material.dart';
import 'package:fudoscreens/Otp/otp_text_field.dart';
import 'package:fudoscreens/Otp/otp_field.dart';
import 'package:fudoscreens/home.dart';
import 'package:fudoscreens/screens/sign_in_screen.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({Key? key}) : super(key: key);

  @override
  _VerifyOTPState createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  var otp = "";
  void moveToSignIN(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  void moveToHome(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return Home();
    }));
  }

  void verify() {
    if (otp == "1234") {
      Navigator.of(context).pop();
      moveToHome(context);
    } else {
      Dialogs.materialDialog(
          msg: "Please Enter the correct OTP",
          title: "Incorrect OTP",
          color: Colors.white,
          context: context,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: IconsButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                text: 'OK',
                iconData: Icons.outbound_rounded,
                color: Colors.black,
                textStyle: TextStyle(color: Colors.white),
                iconColor: Colors.white,
              ),
            ),
          ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => moveToSignIN(context),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 37,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Verify Phone Number',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Please enter the 4 digit code sent to \n+91 1234 567 890 through SMS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Colors.black),
                  ),
                ],
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldWidth: 45,
                keyboardType: TextInputType.number,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  setState(() {
                    otp = pin;
                  });
                  print("Completed: " + pin);
                },
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t recieve a code? ',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        'Resend SMS',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue[900]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  TextButton(
                    onPressed: () => moveToSignIN(context),
                    child: Text(
                      'Wrong number',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          child: RaisedButton(
                            child: Text(
                              'Continue',
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: verify,
                            color: Colors.black,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 90.0, vertical: 20.0),
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'By continuing you’re indicating that you \naccept our Terms of Use and our Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
