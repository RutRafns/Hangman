import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(Hangman());
}

class Hangman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WelcomePage());
  }
}
