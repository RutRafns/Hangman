import 'package:flutter/material.dart';

import 'game_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HANGMAN'),
      ),
      body: Center(
        child: Image.asset('images/image7.png', fit: BoxFit.cover),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          child: const Text('Let\'s play!'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GamePage()));
          },
        ),
      ),
    );
  }
}
