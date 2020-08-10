import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heartover/constants/gradients.dart';
import 'package:heartover/constants/heart.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Text(
              'Feeds'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            gradient: Gradients.bgGradient,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                blurRadius: 20.0,
                spreadRadius: 1.0,
              )
            ],
          ),
        ),
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          150.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: mq.size.width * .9,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            'https://firebasestorage.googleapis.com/v0/b/vcarealltiktok.appspot.com/o/User_image%2F-MBDFh7A0k4ZihLFK3xU.jpg?alt=media&token=8c9d2f99-1a94-4e1d-a642-add1919c38b3',
                        placeholder: (context, url) => CircleAvatar(
                          backgroundColor: Colors.orange,
                          minRadius: 20.0,
                          maxRadius: 20.0,
                        ),
                        imageBuilder: (context, image) => CircleAvatar(
                          backgroundImage: image,
                          minRadius: 20.0,
                          maxRadius: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Mohit Kumar',
                              style: GoogleFonts.roboto(
                                color: Heart.btntext,
                              ),
                            ),
                            Text(
                              '2020-08-06 09:10:09',
                              style: GoogleFonts.roboto(),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  // CachedNetworkImage(imageUrl: 'null')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
