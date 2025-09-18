// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

abstract class NavigapleScreen {
  void navigate();
}

class HomeScreen extends NavigapleScreen {
  @override
  void navigate() {
    print('Navigating to home');
  }
}

class SettingsScreen {
  void navigate() {
    throw Exception('Settings don\'t navigate this way!');
  }
}

class NavigationButton extends StatelessWidget {
  final NavigapleScreen screen;
  const NavigationButton(this.screen, {super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => screen.navigate(),
      child: Text('Navigate'),
    );
  }
}
