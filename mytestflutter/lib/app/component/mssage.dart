import 'package:meta/meta.dart';

import 'dart:convert';

class Message {

  final String img;
  final String name;
  final String msgContent;
  final String time;

  Message({
    @required this.name,
    @required this.msgContent,
    @required this.img,
    @required this.time,
  });


static List<Message>getMessageList(){

  List<Message> list = new List<Message>();
  for (var i = 0; i< 8; i++){
    Message model = Message(name: "消息" + i.toString(), msgContent: "消息体", img: (2000+i).toString(), time: "2019-08");
    list.add(model);
  }

  return list;
}




}