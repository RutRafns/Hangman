import 'package:flutter/material.dart';
import 'supplementary/constants.dart';
import 'supplementary/letter_box.dart';
import 'supplementary/word_list.dart';
import 'main.dart';

class Game extends StatefulWidget {
  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hangman'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              //stack that keeps the hangman pictures and swaps them depending on tries.
              children: [
                hangmanState(Check.tries == 0, "images/image1.png"),
                hangmanState(Check.tries >= 1, "images/image2.png"),
                hangmanState(Check.tries >= 2, "images/image3.png"),
                hangmanState(Check.tries >= 3, "images/image4.png"),
                hangmanState(Check.tries >= 4, "images/image5.png"),
                hangmanState(Check.tries >= 5, "images/image6.png"),
                hangmanState(Check.tries >= 6, "images/image7.png"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: word
                .split('')
                .map((e) => letter(e.toUpperCase(),
                    !Check.selectedChar.contains(e.toUpperCase())))
                .toList(),
          ),
          SizedBox(
            //Keyboard for clicking letters for guessing
            width: double.infinity,
            height: 250.0,
            child: GridView.count(
              crossAxisCount: 7,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              padding: EdgeInsets.all(8.0),
              children: alphabet.map((e) {
                return RawMaterialButton(
                  onPressed: Check.selectedChar.contains(e)
                      ? null //Checking if button been pressed before
                      : () {
                          setState(() {
                            Check.selectedChar.add(e);
                            print(Check.selectedChar);
                            print(Check.tries);
                            if (!word.split('').contains(e.toUpperCase())) {
                              Check.tries++;
                            }
                          });
                        },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Check.selectedChar.contains(e)
                      ? Colors.black87
                      : Colors.blue,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget hangmanState(bool visible, String path) {
  return Visibility(
      visible: visible,
      child: Container(
        width: 250,
        height: 250,
        child: Image.asset(path),
      ));
}

class Check {
  //adding the number of tries

  static int tries = 0;
  static List<String> selectedChar = [];
}

Widget letter(String character, bool hidden) {
  return Container(
    height: 65,
    width: 50,
    padding: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Visibility(
      visible: !hidden,
      child: Text(
        character,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
      ),
    ),
  );
}
