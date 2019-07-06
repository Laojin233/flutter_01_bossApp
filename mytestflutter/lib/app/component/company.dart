import 'dart:convert';

import 'package:meta/meta.dart';

class Company {
  final String logo;
  final String name;
  final String location;
  final String type;
  final String size;
  final String employee;
  final String hot;
  final String count;

  /**公司详情*/
  final String inc;

  Company(
      {@required this.name,
      @required this.logo,
      @required this.type,
      @required this.size,
      @required this.employee,
      @required this.hot,
      @required this.count,
      @required this.inc,
      @required this.location});

  static List<Company> getCompanyList() {
    List<Company> list = [];
    for (int i = 0; i < 10; i++) {
      Company model = new Company(
          name: "阿里巴巴上海中心",
          logo: "logo",
          type: "金融，区块链",
          size: "C轮",
          employee: "职员哈哈",
          hot: "安卓，iOS",
          count: (i * 20).toString(),
          inc: "详情：马云1999年创建",
          location: "上海长宁区金钟路阿里中心");
      list.add(model);
    }
    return list;
  }
}
