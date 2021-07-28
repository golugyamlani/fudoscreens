import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fudoscreens/home.dart';
import 'package:fudoscreens/verify_otp.dart';

class SignInScreen extends StatelessWidget {
  void moveToHome(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return Home();
    }));
  }

  void moveToVerify(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return VerifyOTP();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.yellow,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top Container
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        width: 80,
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () => moveToHome(context),
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                // Fudo icon
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(31),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(35),
                            ),
                          ),
                          child: Image.asset('images/fudo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                // Made with love in india; maybe merge with fudo icon
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Made with ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      Text(
                        ' In India',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // Bottom Container
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 8, 19, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Text(
                              '+91',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 11,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                decoration:
                                    InputDecoration(hintText: "1234 567 890"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                            child: SizedBox(
                              height: 60,
                              child: TextButton(
                                onPressed: () => moveToVerify(context),
                                child: Text(
                                  'Send OTP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFF3364F6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // or breakline; a divider / or
                SizedBox(
                  height: 13,
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 21.0, right: 15.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.black45,
                          height: 50,
                        )),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 21.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.black45,
                          height: 50,
                        )),
                  ),
                ]),
                SizedBox(
                  height: 13,
                ),
                // Continue with Email
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 8, 19, 8),
                  child: SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.email,
                            color: Color(0xFF404057),
                            size: 35,
                          ),
                          Text(
                            'Continue With Email',
                            style: TextStyle(
                              color: Color(0xFF404057),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Opacity(
                            opacity: 0,
                            child: Icon(Icons.email),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Facebook and google
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(19, 8, 4, 8),
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/facebook-logo.png',
                                  height: 25.0,
                                  width: 25.0,
                                ),
                                Text(
                                  'facebook',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 8, 19, 8),
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Google',
                                  style: TextStyle(
                                    color: Color(0xFF404057),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Image.asset(
                                  'images/google.png',
                                  height: 25.0,
                                  width: 25.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
