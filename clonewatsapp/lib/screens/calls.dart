import 'package:flutter/material.dart';
import '../model/calls.dart';

class Calls extends StatefulWidget {
  Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (Builder,i)=>Column(
        children: [
          Divider(
            height: 20.0,

          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
               backgroundImage: NetworkImage(callData[i].imageUrl),
            ),
            title: Text(callData[i].name,
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            
            ),
            subtitle: Container(  
              padding: EdgeInsets.only(top: 5.0),
              child: Text(callData[i].time),
            ),
            trailing: Icon(Icons.call,color: Color(0xff075E54),),
            

          )
        ],
      ),
    );
  }
}