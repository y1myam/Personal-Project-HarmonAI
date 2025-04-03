import 'package:flutter/material.dart';
import 'package:harmon_ai/home_screen.dart';
import 'package:harmon_ai/prompt_screen.dart';

class TogglePage extends StatefulWidget {
  const TogglePage({super.key});

  @override
  State<TogglePage> createState() =>  TogglePageState();
}

class  TogglePageState extends State<TogglePage> {
  bool _showHomeScreen = true;

  void _toggleScreen() {
    setState(() {
      _showHomeScreen = !_showHomeScreen;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (_showHomeScreen) {
      return HomeScreen( 
        showPromptScreen: _toggleScreen,
      );
    } else {
      return PromptScreen(
        showHomeScreen: _toggleScreen,
      );
    }
  }
}