import 'package:flutter/material.dart';
import 'supplementary/constants.dart';
import 'supplementary/word_list.dart';

class Game extends StatefulWidget {
  @override
  _GamePage createState() => _GamePage();
}

class Check {
  //Changes to 1 when win condition is met.
  static int win = 0;
  //adding the number of tries,

  static int tries = 1;
  //adds picked characters to list to later compare with word.
  static List<String> selectedChar = [];
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
                hangmanState(
                    Check.win == 1, 'images/imageWin.png'), //Winning image
                hangmanState(Check.tries == 1, 'images/image1.png'),
                hangmanState(Check.tries == 2, 'images/image2.png'),
                hangmanState(Check.tries == 3, 'images/image3.png'),
                hangmanState(Check.tries == 4, 'images/image4.png'),
                hangmanState(Check.tries == 5, 'images/image5.png'),
                hangmanState(Check.tries == 6, 'images/image6.png'),
                hangmanState(Check.tries == 7, 'images/image7.png'),
                hangmanState(
                    Check.tries == 8, 'images/imageLoser.png') //Loss image
              ],
            ),
          ),
          Expanded(
            //set's up word for guessing, pulling word from word_list.
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: usedWord
                  .split('')
                  .map((e) => letter(e.toUpperCase(),
                      !Check.selectedChar.contains(e.toUpperCase())))
                  .toList(),
            ),
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

                            if (!usedWord.split('').contains(e.toUpperCase())) {
                              Check.tries++;
                              if (Check.tries == 8) {
                                print('YOU SUCK');
                              }
                              ;
                            } else {
                              var wordAsList = usedWord.split('');
                              var gameWon = true;
                              for (var letter in wordAsList) {
                                print(letter);
                                if (!Check.selectedChar.contains(letter)) {
                                  gameWon = false;
                                }
                              }
                              if (gameWon == true) {
                                Check.win++;
                                print('winner');
                              }
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
                      ? Colors.black45
                      : Colors.amberAccent,
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
      child: Image.asset(path),
    ),
  );
}

Widget letter(String character, bool hidden) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(5.5),
      ),
      child: Visibility(
        visible: !hidden,
        child: Text(
          character,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
      ),
    ),
  );
}
