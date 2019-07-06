import 'package:flutter/material.dart';
import 'company.dart';

import 'package:flutter/cupertino.dart';

class CompanyInfo extends StatelessWidget {
  final Company company;

  CompanyInfo(this.company);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
      padding: const EdgeInsets.all(10),
      child: new SizedBox(
        child: new Card(
          elevation: 0.0,

          //主体
          child: new Row(
            children: <Widget>[
              //logo
              new Container(
                width: 60,
                child: new Image.asset("assets/images/2001.png"),
              ),

              //公司基本信息
              new Expanded(
                child: new Container(
                  padding: const EdgeInsets.all(10),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //名字
                      new Container(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        child: new Text(
                          company.name,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      //地址
                      new Container(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 10,
                          right: 10,
                          bottom: 5,
                        ),
                        child: new Text(
                          company.location,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),

                      //类型
                      new Container(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                        ),
                        child: new Text(
                          company.type + "  " + company.size,
                          style: new TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
