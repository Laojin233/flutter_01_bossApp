import 'package:flutter/material.dart';

import 'mssage.dart';

class MessageListItem extends StatelessWidget {

  final Message message;
  MessageListItem(this.message);


  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return new Padding(
        padding: new EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10,
          bottom: 2,
        ),
      child: new Card(
          color: Colors.white,
        elevation: 0.0,
          child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            width: 60,
            height: 60,
            padding: new EdgeInsets.all(5.0),
            margin: new EdgeInsets.all(5.0),
            child: new CircleAvatar(
              backgroundImage: new AssetImage("assets/images/"+message.img+".jpg"),
              radius: 25,
            ),

          ),

          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                    padding: new EdgeInsets.only(
                      top: 10,
                      left: 10,
                    ),
                    child: new Text(message.name,
                      style: new TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        wordSpacing: 0,
                        fontStyle: FontStyle.normal,
                      ),
                    )
                ),


                new Container(
                  padding: new EdgeInsets.only(
                    top: 5,
                    left: 10,
                  ),
                  child: new Text(message.msgContent,
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                )

              ],
            ),
          ),

          new Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.only(
                  top: 10,
                  right: 5,
                ),
                child:new Text(message.time,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              )

            ],
          ),

          new Divider(),


        ],
      ),
        ),



    );
  }


}

