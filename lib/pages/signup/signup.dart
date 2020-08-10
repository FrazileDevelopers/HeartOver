import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heartover/constants/gradients.dart';
import 'package:heartover/constants/heart.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: mq.size.height,
        width: mq.size.width,
        decoration: BoxDecoration(
          gradient: Gradients.bgGradient,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    title: Text(
                      'Sign Up'.toUpperCase(),
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: mq.size.width * .04,
                      ),
                    ),
                    centerTitle: true,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Sign Up',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: (mq.size.height / mq.size.width) * 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Its a free sign up forever.',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: (mq.size.height / mq.size.width) * 8,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Center(
                  child: Container(
                    width: mq.size.width * .85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  height: mq.size.height * .08,
                  minWidth: mq.size.width * .85,
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    Heart.login,
                    (route) => true,
                  ),
                  child: Text(
                    'Sign up'.toUpperCase(),
                    style: GoogleFonts.roboto(
                      color: Heart.btntext,
                      fontSize: (mq.size.height / mq.size.width) * 7,
                    ),
                  ),
                  color: Heart.btnbg,
                ),
                Text(
                  'Already Have an account? Log In!'.toUpperCase(),
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: (mq.size.height / mq.size.width) * 8,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
