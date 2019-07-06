import 'dart:convert';

import 'package:meta/meta.dart';


class Job {
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String username;
  final String title;

  Job ({
   @required this.name,
    @required this.cname,
    @required this.size,
    @required this.salary,
    @required this.username,
    @required this.title
});


  static List<Job>fromJson(String json){
    List<Job> _jobs = [];
//    JsonDecoder decoder = new JsonDecoder();

//    var mapdata = decoder.convert(json)['list'];
//    for (var value in mapdata) {
//      Job job = new Job(name: value['name'], cname: value['cname'], size: value['size'],
//          salary: value['salary'], username: value['username'], title: value['title']);
//
//      _jobs.add(job);
//    };

    for (var i = 0; i < 10; i++){
      Job job = new Job(name: "iOS工程师" + i.toString(), cname: "阿里巴巴",
          size: (i* 10).toString(), salary: "薪水"+(i* 10).toString() + "k", username: "李先生", title: "工程师");
      _jobs.add(job);
    }

    print("jobs个数="+_jobs.length.toString());

    return _jobs;
  }

}