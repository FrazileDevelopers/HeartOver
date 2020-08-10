import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heartover/constants/gradients.dart';
import 'package:heartover/constants/heart.dart';
import 'package:heartover/widgets/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgWidget(
              'assets/svg/bulb.svg',
              width: 250.0,
              height: 250.0,
            ),
            Text(
              Heart.appName,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: (mq.size.height / mq.size.width) * 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'The place where you can connect to your friends at one place. Its free & will be forever.',
              textAlign: TextAlign.center,
              maxLines: 3,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: (mq.size.height / mq.size.width) * 8,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                MaterialButton(
                  height: mq.size.height * .08,
                  minWidth: mq.size.width * .3,
                  onPressed: () => Navigator.pushNamed(
                    context,
                    Heart.signup,
                  ),
                  child: Text(
                    'Sign Up'.toUpperCase(),
                    style: GoogleFonts.roboto(
                      color: Heart.btntext,
                      fontSize: (mq.size.height / mq.size.width) * 7,
                    ),
                  ),
                  color: Heart.btnbg,
                ),
                MaterialButton(
                  height: mq.size.height * .08,
                  minWidth: mq.size.width * .3,
                  onPressed: () => Navigator.pushNamed(
                    context,
                    Heart.login,
                  ),
                  child: Text(
                    'Log in'.toUpperCase(),
                    style: GoogleFonts.roboto(
                      color: Heart.btntext,
                      fontSize: (mq.size.height / mq.size.width) * 7,
                    ),
                  ),
                  color: Heart.btnbg,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: mq.size.width * .025,
                  width: mq.size.width * .025,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: mq.size.width * .025,
                  width: mq.size.width * .025,
                ),
                Container(
                  height: mq.size.width * .025,
                  width: mq.size.width * .025,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: mq.size.width * .025,
                  width: mq.size.width * .025,
                ),
                Container(
                  height: mq.size.width * .025,
                  width: mq.size.width * .025,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
