import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../Components/appBar.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _currentbatch = [
      "Batch 2015",
      "Batch 2016",
      "Batch 2017",
      "Batch 2018",
      "Batch 2019",
      "Batch 2020",
      "Batch 2021",
      "Batch 2022"
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // leading: IconButton(
          //   onPressed: () {
          //     // Navigator.pushNamed(context, '/programme_curriculam_home');
          //   },
          //   icon: Icon(Icons.arrow_back),
          // ),
          title: Text(
            "Time Table",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  print("Time Table" + _currentbatch[index]);
                  Navigator.pushNamed(
                      context, '/programme_curriculam_home/show_timetable',
                      arguments: {"batch": _currentbatch[index]});
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                  child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.orange, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      title: Text(
                        _currentbatch[index],
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.orange,
                      )),
                ));
          },
          itemCount: _currentbatch.length,
        ));
  }
}
