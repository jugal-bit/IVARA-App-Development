import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../constants.dart';

// class ChatWithUs extends StatelessWidget {
//   static String id = 'chatWithUs';
//   const ChatWithUs({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     );
//   }
// }
class ChatWithUs extends StatefulWidget {
  @override
  _ChatWithUsState createState() => _ChatWithUsState();
}

class _ChatWithUsState extends State<ChatWithUs> {
  String messageText;
  final messageTextController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 1.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.amberAccent,),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: SizedBox(
            height: 35.0, child: Image.asset("assets/icons/logo_long.jpeg")),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
            child: Icon(
              LineAwesomeIcons.volume_up,
              size: 30,
            ),
          )
        ],
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
            'text':'Thanks.',
            'sender':'Me'
          },
          {
            'text':'No issues, let me look into your problem.',
            'sender':'Teacher'
          },
          {
            'text':'But I was having a litte bit of problem regarding online lectures, videos arent loading.',
            'sender':'Me'
          },
          {
            'text':'Sorry to disturb you at the uneven hour.',
            'sender':'Me'
          },
          {
            'text':'How can i help you ?',
            'sender':'Teacher'
          },
          {
            'text':'Hey David !',
            'sender':'Teacher'
          },
          {
            'text':'Hello.',
            'sender':'Me'
          },
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
            color: isMe ? Colors.amberAccent : Colors.black,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                text,
                style: TextStyle(
                  color: isMe?Colors.black:Colors.amber
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
