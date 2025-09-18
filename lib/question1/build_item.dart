import 'package:flutter/material.dart';

abstract class BuildItem {
  String data;
  BuildItem({
    required this.data,
  });

  Widget build(BuildContext context);
}
