import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(Hangman());
}

class Hangman extends StatelessWidget {
  @override
  //Changing Theme to custom one later, still planning colorscheme
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: WelcomePage());
  }
}
