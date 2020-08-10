import 'package:flutter/material.dart';
import 'package:heartover/constants/gradients.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
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
      ),
    );
  }
}
