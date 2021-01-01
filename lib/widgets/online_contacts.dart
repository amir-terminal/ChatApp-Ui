import 'package:chatme/models/message_model.dart';
import 'package:chatme/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class OnlineFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Online friends',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
        ]),
      ),
      Container(
        height: 110.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: onlineFriends.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                return Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ChatScreen(user : onlineFriends[index]);
                }));
              },
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(onlineFriends[index].imageUrl),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    onlineFriends[index].name,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
