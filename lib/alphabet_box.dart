import 'package:flutter/material.dart';

class AlphabetCard extends StatelessWidget {
  AlphabetCard(this.onPress);

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
      ),
    );
  }
}
