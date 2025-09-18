import 'package:flutter/material.dart';
import 'package:flutter_mentor_task1/question1/build_item.dart';

class TextItem extends BuildItem {
  TextItem({required super.data});

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
