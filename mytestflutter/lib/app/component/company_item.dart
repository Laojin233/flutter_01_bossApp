import 'package:flutter/material.dart';

import 'company.dart';

class CompanyItem extends StatelessWidget {

  final Company company;

  CompanyItem(this.company);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.only(
        top: 5,
        left: 10,
        right: 10,
        bottom: 2
      ),

      child: new Card(
        color: Colors.white,
          elevation: 0,
          child:  new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              //左边
              new Container(
                padding: new EdgeInsets.only(
                  top: 5,
                  left: 5
                ),
                width: 80,
                height: 70,
                color: Colors.white,
//                child: new Image.asset('assets/images/ali.png'),
              ),

              //右边内容
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    //公司名
                    new Container(
                      padding: new EdgeInsets.only(
                          top: 5,
                          left: 10,
                          right: 10,
                          bottom: 5
                      ),
                      child: new Text(company.name,
                        style: new TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                    ),

                    //公司地址
                    new Container(
                      padding: new EdgeInsets.only(
                          top: 1,
                          left: 10,
                          right: 10,
                          bottom: 5
                      ),
                      child: new Text(company.location,
                        style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),

                    //公司类型，规模
                    new Container(
                      padding: new EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 10,
                        bottom: 5,
                      ),
                      child: new Text(company.type + " | " + company.size,
                        style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),


                    //横线
                    new Container(
                      color: Colors.black12,
                      height: 0.7,
                      padding: new EdgeInsets.only(
                          top: 5,
                          left: 10,
                          right: 10,
                          bottom: 5
                      ),
                    ),


                    //标签和向右的箭头
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[

                        new Container(
                          padding: new EdgeInsets.only(
                            top: 10,
                            left: 10,
                            bottom: 5,
                          ),
                          child: new Text(company.inc,
                            style: new TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        new Expanded(
                          child:new Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                                new Padding(padding:new EdgeInsets.only(
                                  bottom: 5,
                                ),
                                  child: const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black12,
                                  ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),

              ),
            ],
          )

      )
      ,

    );
  }



}