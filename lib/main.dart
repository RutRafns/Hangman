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

List<String> alphabet = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'X',
  'Y',
  'Z'
];
