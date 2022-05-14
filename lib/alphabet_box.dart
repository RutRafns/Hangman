import 'package:flutter/material.dart';

class AlphabetCard extends StatelessWidget {
  AlphabetCard({@required this.letter, this.onPress});

  final Function onPress;
  final String letter;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(child: Text(letter)),
    );
  }
}
