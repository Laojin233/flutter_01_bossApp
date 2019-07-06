import 'package:flutter/material.dart';

import 'job.dart';

class JobHot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      child: new Row(
        children: <Widget>[
          new RichText(
            text: new TextSpan(
              text: "暂无热招职位",
              style: new TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
