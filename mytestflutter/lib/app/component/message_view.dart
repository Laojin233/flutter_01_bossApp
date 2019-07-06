import 'package:flutter/material.dart';

import 'mssage.dart';
import 'msglist_item.dart';

class MessageTab extends StatefulWidget {

  @override
  MessageState createState() => MessageState();

}

class MessageState extends State<MessageTab> {

  List<Message> msgList = [];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getJobList();
  }

  void getJobList(){
    msgList = Message.getMessageList();

  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromARGB(255,245,245,245),
      appBar: new AppBar(
        title: new Text("消息",style: new TextStyle(fontSize: 20.0,color: Colors.white)),
      ),
      body: new ListView.builder(itemCount: msgList.length,itemBuilder: buildMessageItem),
    );
  }

  Widget buildMessageItem(BuildContext context,int index){
    Message msg = msgList[index];
    MessageListItem mesgItem = new MessageListItem(msg);

//    print("图片是="+"assets/images/"+msg.img+".jpg");

    return mesgItem;
  }

}