import 'package:flutter/material.dart';
import 'company.dart';
import 'job.dart';


class CompanyInc extends StatelessWidget {

  final String _companyInc;
  CompanyInc(this._companyInc);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10
        ),

      //
      child: new Container(
        color: Colors.white,
        child: new Padding(
            padding: const EdgeInsets.all(15.0),

            //
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[

                    new Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: new Text(
                        "公司介绍",
                        style: new TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    )
                  ],
                ),


                //内容
                new RichText(
                    text: new TextSpan(
                      text: _companyInc,
                      style: new TextStyle(
                        fontSize: 13,
                        color: Colors.black,
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