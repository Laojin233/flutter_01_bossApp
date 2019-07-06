import 'package:flutter/material.dart';
import 'app/component/icon_tab.dart';

import 'app/component/jobs_view.dart';
import 'app/component/compay_view.dart';
import 'app/component/message_view.dart';
import 'app/component/mine.dart';

class BossApp extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

const double _kTabTextSize = 11.0;
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;
Color _kPrimaryColor = new Color.fromARGB(255, 0, 215, 198);

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();

    _controller =
        new TabController(initialIndex: _currentIndex, length: 4, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          //四个界面
          new JobsTab(),
          new CompanyTab(),
          new MessageTab(),
          new MinePage(),
        ],
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
            controller: _controller,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: new TextStyle(fontSize: _kTabTextSize),
            tabs: <IconTab>[
              new IconTab(
                icon: _currentIndex == INDEX_JOB
                    ? "assets/images/tuijianzhiwei.png"
                    : "assets/images/tuijianzhiwei.png",
                text: "职位",
                color: _currentIndex == INDEX_JOB
                    ? _kPrimaryColor
                    : Colors.grey[900],
              ),
              new IconTab(
                icon: _currentIndex == INDEX_COMPANY
                    ? "assets/images/gongsi.png"
                    : "assets/images/gongsi.png",
                text: "公司",
                color: _currentIndex == INDEX_COMPANY
                    ? _kPrimaryColor
                    : Colors.grey[900],
              ),
              new IconTab(
                icon: _currentIndex == INDEX_MESSAGE
                    ? "assets/images/xiaoxi.png"
                    : "assets/images/xiaoxi.png",
                text: "消息",
                color: _currentIndex == INDEX_MESSAGE
                    ? _kPrimaryColor
                    : Colors.grey[900],
              ),
              new IconTab(
                icon: _currentIndex == INDEX_MINE
                    ? "assets/images/wode.png"
                    : "assets/images/wode.png",
                text: "我的",
                color: _currentIndex == INDEX_MINE
                    ? _kPrimaryColor
                    : Colors.grey[900],
              ),
            ]),
      ),
    );
  }
}
