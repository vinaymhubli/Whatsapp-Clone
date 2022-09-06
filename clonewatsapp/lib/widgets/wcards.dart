import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wcards extends StatelessWidget {
  //const Wcards({Key? key, this.name, this.imageurl, this.time}) : super(key: key);
   final String name,imageUrl,time;
   Wcards(this.name,this.imageUrl,this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(  
        maxRadius: 25,
        foregroundColor: Colors.white,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),
    ),
    subtitle: Text(time),
    );
  }
}