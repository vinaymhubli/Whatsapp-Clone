import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Camera"),
      ),
    );
  }
}
