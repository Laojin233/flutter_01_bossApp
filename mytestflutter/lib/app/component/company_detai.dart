import 'package:flutter/material.dart';

import 'company.dart';
import 'company_hot_job.dart';
import 'company_inc.dart';
import 'company_info.dart';



const double _kAppBarHeight = 256.0;

class CompanyDetail extends StatefulWidget {

  final Company _company;
  CompanyDetail(this._company);


  CompanyDetailState createState() => new CompanyDetailState();

}


class CompanyDetailState extends State<CompanyDetail> with TickerProviderStateMixin{

  List<Tab> _tabs;
  List<Widget> _imagePages;
  TabController _controller;
  List<String> _urls = [
    'http:\/\/img01.bqstatic.com\/upload\/goods\/201\/602\/2714\/20160227145859_800868.jpg@300w_300h_90Q.jpg',
    'http:\/\/img01.bqstatic.com\/upload\/goods\/000\/009\/4470\/0000094470_34610.jpg@300w_300h_90Q.jpg',
    'http:\/\/img01.bqstatic.com\/upload\/goods\/201\/601\/1210\/20160112102806_216252.jpg@300w_300h_90Q.jpg',
  ];

  Widget _companyTabContent;
  VoidCallback onChanged;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (!_urls.isEmpty) {
      _imagePages = <Widget>[];
      _urls.forEach((String url){
        _imagePages.add(
          new Container(
            color: Colors.black54.withAlpha(900),
            child: new ConstrainedBox(
                constraints: const BoxConstraints.expand(),
            child: new Image.network(
              url,
              fit: BoxFit.cover,
              height: _kAppBarHeight,
            ),
            ),
          ),
        );
      });
    }


    _tabs = [
      new Tab(text: '公司概况',),
      new Tab(text: '热招职位',),
    ];

    _companyTabContent = new CompanyInc(widget._company.inc);
    _controller = new TabController(length: _tabs.length, vsync: this);
    onChanged = (){

      setState(() {
        if (_currentIndex == 0) {
          _companyTabContent = new CompanyInc(widget._company.inc);
        }else {
          _companyTabContent = new JobHot();
        }

        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);


  }

  @override
  void dispose() {
    // TODO: implement dispose

    _controller.removeListener(onChanged);
    _controller.dispose();

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      body: new Stack(
        children: <Widget>[
          //滚动
          new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10
                  ),
                  child: new Image.asset("assets/images/company1.png"
                  ,fit: BoxFit.fill,
                  ),
                  height: 150,
                  width: 375,
                  color: Colors.black12,
                ),

                new Container(
                  padding: new EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10
                  ),
                  color: Colors.white,
                  child: new Text(
                      '求职者你好,所有资料均是公司提供，如果违法法律，请第一时间举报',
                       style: new TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                  ),
                ),

                //切换
                new Container(
                  padding: new EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10
                  ),
                  child: new TabBar(
                    tabs: _tabs,
                    controller: _controller,
                  ),
                ),

                //内容
                new Container(
                  padding: new EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 10
                  ),
                  child: _companyTabContent,
                ),

              ],
              
            ),
          ),


          new Positioned(
              top: 10,
              left: -10,
              child: new Container(
                padding: const EdgeInsets.all(10),
                child: new BackButton(color: Colors.cyan,),
              )),
          
        ],
      ),
    );

  }



}