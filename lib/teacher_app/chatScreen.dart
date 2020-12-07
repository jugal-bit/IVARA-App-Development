
import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/notifications.dart';
// import 'constants.dart';
import '../student_app/constants.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String messageText;
  final messageTextController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Announcement()));
          },
          child: Icon(Icons.notifications))],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessageStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        List<Map<String,String>> messages = [
          {
            'text':'Hello',
            'sender':'Me'
          },
          {
            'text':'Hii',
            'sender':'Child'
          }
        ];
        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message['text'];
          final messageSender = message['sender'];
          String currentUser = 'Me';
          final messageBubble = MessageBubble(
            text: messageText,
            sender: messageSender,
            isMe: messageSender == currentUser,
          );
          messageBubbles.add(messageBubble);
        }
        return Expanded(child: ListView(reverse:true, children: messageBubbles));
      }
  }

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;
  MessageBubble({this.text, this.sender, this.isMe});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sender,
            style: TextStyle(fontSize: 10, color: Colors.black54),
          ),
          Material(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topLeft: isMe?Radius.circular(30):Radius.circular(0),
              topRight: isMe?Radius.circular(0):Radius.circular(30),
            ),
            elevation: 5,
            color: isMe ? yellowDefault : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                text,
                style: TextStyle(
                  color: isMe?Colors.white:Colors.black
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
