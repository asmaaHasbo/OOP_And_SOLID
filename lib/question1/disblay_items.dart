import 'package:flutter/material.dart';
import 'package:flutter_mentor_task1/question1/build_item.dart';
import 'package:flutter_mentor_task1/question1/img_item.dart';
import 'package:flutter_mentor_task1/question1/text_item.dart';

class DisplayItems extends StatelessWidget {
  const DisplayItems({super.key});
  @override
  Widget build(BuildContext context) {
    List<BuildItem> items = [
      TextItem(data: 'this is the q1'),
      TextItem(data: 'this is the q2'),
      ImgItem(
        data:'url'
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text('Question1', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map((item) => item.build(context)).toList(),
        ),
      ),
    );
  }
}
