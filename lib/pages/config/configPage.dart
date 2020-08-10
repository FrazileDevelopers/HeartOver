import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heartover/constants/heart.dart';
import 'package:heartover/providers/provider.dart';
import 'package:heartover/routes/routes.dart';
import 'package:provider/provider.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providers(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Heart Over',
        initialRoute: Heart.initial,
        routes: Routes.routes(),
      ),
    );
  }
}
