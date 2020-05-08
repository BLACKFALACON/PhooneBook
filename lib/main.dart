import 'package:flutter/material.dart';
import 'package:whatsapp/whatsaap_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff075E54)
      ),
      home: WhatsappMain(),
      );  
  }
}
