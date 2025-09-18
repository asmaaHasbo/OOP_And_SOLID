import 'package:flutter/material.dart';
import 'package:flutter_mentor_task1/question1/build_item.dart';

class ImgItem extends BuildItem {
  ImgItem({required super.data});

  @override
  Widget build(BuildContext context) {
    return Image.network(data, fit: BoxFit.cover, height: 200);
  }
}
