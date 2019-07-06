import 'package:flutter/material.dart';


class MinePage extends StatefulWidget {

  @override
  MinePageState createState() => MinePageState();

}

class MinePageState extends State<MinePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 248, 248, 248),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.only(
              top: 10,
              left: 0,
              right: 0,
              bottom: 10
            ),
            height: 160,
            color:new Color.fromARGB(255, 0, 215, 198),

            child: new Row(
              children: <Widget>[
//                new Container(
//                  child: new CircleAvatar(
//                    radius: 25,
//                    backgroundImage: new NetworkImage('http://pic1.win4000.com/wallpaper/2017-10-25/59f083092ed4f.jpg'),
//                  ),
//                  width: 50,
//                  height: 50,
//                  margin: new EdgeInsets.only(
//                    top: 30,
//                    left: 30
//                  ),
//                  color: new Color.fromARGB(255, 0, 215, 198),
//                ),

                new Container(
                  child: new Image.asset('assets/images/head.png'),
                  width: 50,
                  height: 50,
                  margin: new EdgeInsets.only(
                      top: 30,
                      left: 30
                  ),
                  color: new Color.fromARGB(255, 0, 215, 198),
                ),


                new Column(
                  children: <Widget>[
                    new Container(
                      padding: new EdgeInsets.only(
                        top: 60,
                        left: 20,
                      ),
                      child: new Text("小企鹅",style: new TextStyle(
                          color: Colors.black,
                          fontSize: 15
                      ),
                      ),
                    ),

                    new Container(
                      padding: new EdgeInsets.only(
                        top: 10,
                        left: 20
                      ),
                      child: new Text("大家好，我来自深圳",style: new TextStyle(
                          color: Colors.black38,
                          fontSize: 14
                      ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),

          new Container(
            padding: new EdgeInsets.only(
              top: 5,
              left: 0,
              right: 0,
            ),
            height: 10,
            color: Colors.black12,
          ),

          //第二行
          new SliverList(delegate:
          new SliverChildListDelegate([

            new Container(
              color: Colors.white,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
//                  new Text('沟通过',
//                  style: new TextStyle(
//                    color: Colors.black,
//                    fontSize: 15,
//                  ),),
//
//                  new Text('已沟通',
//                    style: new TextStyle(
//                      color: Colors.black,
//                      fontSize: 15,
//                    ),),
//
//                  new Text('待面试',
//                    style: new TextStyle(
//                      color: Colors.black,
//                      fontSize: 15,
//                    ),),

                  new CustomView(count: '100',title: '沟通过',onPressed: (){

                  },),

                  new CustomView(count: '30',title: '已沟通',onPressed: (){

                  },),

                  new CustomView(count: '3',title: '待面试',onPressed: (){

                  },)

                ],

              ),
              ),

          ])
          ),

        ],
      ),
    );
  }
}


class CustomView extends StatelessWidget {

  CustomView({Key key, this.count ,this.title,this.onPressed});

  final String count;
  final String title;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: onPressed,
      child: new Column(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.only(
              bottom: 10
          ),
          child: new Text(count,
          style: new TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),),
          ),

          new Text(title,
            style: new TextStyle(
              color: Colors.black,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }


}