import 'package:flutter/material.dart';
import '../model/chat.dart';


class Chat extends StatefulWidget {
  Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i)=> Column( 
        children: [
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(   
              maxRadius: 25,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(messageData[i].name,
                style: TextStyle( 
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )
                ),
                Text(messageData[i].time,
                style: TextStyle(color: Colors.grey,fontSize: 17.0    ),
                
                
                )
              ],
            ),
            subtitle: Container(  
              padding: EdgeInsets.only(top :5.0),
              child: Text(messageData[i].message, 
              style: TextStyle(  
                color:Colors.grey,
                fontSize: 14.0,
              ),
              
              ),
            ),
            onTap: (){},
          )
        ],
      ),
    );
  }
}