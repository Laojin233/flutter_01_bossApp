import 'package:flutter/material.dart';
import 'company.dart';
import 'company_item.dart';
import 'company_detai.dart';

class CompanyTab extends StatefulWidget {
  @override
  CompanyState createState() => new CompanyState();
}

class CompanyState extends State<CompanyTab> {
  List<Company> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCompanyList();
  }

  void getCompanyList() {
    list = Company.getCompanyList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: new AppBar(
        title: new Text("公司",
            style: new TextStyle(fontSize: 20.0, color: Colors.white)),
      ),
      body: new ListView.builder(
        padding: new EdgeInsets.all(5),
        itemExtent: 135,
        itemCount: list.length,
        itemBuilder: buidCompanyItem,
      ),
    );
  }

  Widget buidCompanyItem(BuildContext context, int index) {
    var item = new InkWell(
      onTap: () {
        Company company = list[index];
        gotoNextPage(context, company);

//        showDialog(context: context,child: new AlertDialog(
//          content: new Text("敬请期待",
//          style: new TextStyle(
//        fontSize: 14,
//        ),
//        ),
//        )
//        );
      },
      child: new CompanyItem(list[index]),
    );

    return item;
  }

  //跳转到下页
  void gotoNextPage(BuildContext context, Company company) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new CompanyDetail(company)));
  }
}
