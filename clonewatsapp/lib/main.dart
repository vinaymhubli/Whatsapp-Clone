import 'package:clonewatsapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
        tabBarTheme: TabBarTheme(labelColor: Colors.white),
        textTheme: TextTheme(
            subtitle1: TextStyle(color: Colors.white, fontSize: 16.0),
            bodyText1: TextStyle(color: Colors.black),
            button: TextStyle(color: Colors.white)),
        bottomAppBarColor: Colors.white,
      ),
      home: WhatsappSplash(),
    );
  }
}
