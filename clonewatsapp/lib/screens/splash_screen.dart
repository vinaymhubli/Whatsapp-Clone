import 'package:clonewatsapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class WhatsappSplash extends StatefulWidget {
  WhatsappSplash({Key? key}) : super(key: key);

  @override
  State<WhatsappSplash> createState() => _WhatsappSplashState();
}

class _WhatsappSplashState extends State<WhatsappSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.light)),
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: Image.asset(
                'assets/images/vin.jpg',
                scale: 2.0,
              ),
            ),
            SizedBox(height: 250),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('from',
                      style: TextStyle(color: Colors.grey, fontSize: 17)),
                  SizedBox(height: 15.0),
                  Text('FACEBOOK',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ]),
    );
  }
}
