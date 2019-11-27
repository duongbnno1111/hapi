import 'package:flutter/material.dart';
import './model/control_screen.dart';

void main() => runApp(
      MaterialApp(
        home: MainScreen(),
      ),
    );

ControlScreen controlScreen = ControlScreen();

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return controlScreen;
  }
}
