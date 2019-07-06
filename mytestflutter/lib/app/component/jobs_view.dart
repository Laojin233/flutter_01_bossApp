import 'package:flutter/material.dart';

import 'joblist_item.dart';

import 'job.dart';

class JobsTab extends StatefulWidget {
  @override
  JobList createState() => new JobList();
}

class JobList extends State<JobsTab> {
  List<Job> jobs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getJobList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text('职位',
            style: new TextStyle(fontSize: 20.0, color: Colors.white)),
      ),
      body: new ListView.builder(
          itemCount: jobs.length, itemBuilder: buildJobItem),
    );
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job job = jobs[index];

    var jobItem = new InkWell(
      onTap: () {
        showDialog(
            context: context,
            child: new AlertDialog(
              content: new Text(
                "敬请期待",
                style: new TextStyle(fontSize: 20.0),
              ),
            ));
      },
      child: new JobListItem(job),
    );

    return jobItem;
  }

  void getJobList() {
    setState(() {
      jobs = Job.fromJson("""
    {
      "list":[
        {
          "name":"架构师",
          "cname":"蚂蚁金服",
         "size":"B轮",
         "salary":"20-40k",
           "username":"小西姐",
          "title":"HR",
     },
      {
        "name":"架构234师",
        "cname":"蚂蚁2342金服",
        "size":"B轮",
       "salary":"20-40k",
       "username":"小西234姐",
        "title":"H2R",
      }
      ]
    }
    """);
      //      print(jobs);
//      Job job = jobs.first;
//      print(job.name);
//      print("数据是这个");
    });
  }
}
