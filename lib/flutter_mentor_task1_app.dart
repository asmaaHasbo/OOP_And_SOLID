import 'package:flutter/material.dart';
import 'package:flutter_mentor_task1/question1/disblay_items.dart';

class FlutterMentorTask1App extends StatelessWidget {
  const FlutterMentorTask1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DisplayItems());
  }
}
