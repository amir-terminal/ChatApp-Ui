import 'package:chatme/models/message_model.dart';
import 'package:chatme/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //Function
  dynamic _buildMessage(Message message, bool user) {
    final msg = Container(
        margin: user
            ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
            : EdgeInsets.only(top: 8.0, bottom: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        width: MediaQuery.of(context).size.width * 0.795,
        decoration: BoxDecoration(
          color: user ? Colors.cyan : Colors.grey[200],
          borderRadius: user
              ? BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment:
              user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              message.time,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              message.text,
              style: TextStyle(
                color: user ? Colors.white : Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ));
    if (user) {
      return msg;
    }

    return Row(
      crossAxisAlignment:
          user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        msg,
        IconButton(
            icon: message.isLiked
                ? Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
            onPressed: () {
              setState(() {
                if (message.isLiked) {
                  return message.isLiked = false;
                }
                return message.isLiked = true;
              });
            })
      ],
    );
  }

  dynamic _buildMessegeComposure() {
    return Container(
      height: 70.0,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration: InputDecoration.collapsed(hintText: 'send message ...'),
          )),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.user.name,
          textAlign: TextAlign.center,
        ),
        elevation: 0.0,
        actions: [
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          return FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 10.0),
                    itemCount: roomMessage.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = roomMessage[index];
                      final bool isMe = (message.sender.id == currentUser.id);
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessegeComposure()
          ],
        ),
      ),
    );
  }
}
