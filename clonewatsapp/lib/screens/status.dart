import 'package:clonewatsapp/model/chat.dart';
import 'package:flutter/material.dart';
import '../widgets/wcards.dart';
import '../screens/chat.dart';


class Status extends StatefulWidget {
  Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcards("My Status", "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", 
        "Tap to add status"),
        Divider(),
        Heading("Recent updates"),
        Wcards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        Wcards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        Wcards(messageData[1].name, messageData[1].imageUrl, messageData[1].time),
        Wcards(messageData[4].name, messageData[4].imageUrl, messageData[4].time),
         Divider(),
        Heading("Recent seen"),
        Wcards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        Wcards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),



      ],
    );
  }

  
}
class Heading extends StatelessWidget {
  
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(  
        padding: EdgeInsets.only(left: 5.0,top: 5.0),
        child: Text(heading,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.grey
        ),
        
        
        ),
      ),
    );
  }
}