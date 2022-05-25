import 'dart:math';

class Words {
  var _hangmanWords = [
    'boxcar',
    'quizzes',
    'jokes',
    'embezzle',
    'espionage',
    'jazz',
    'wheezy',
    'fixable',
    'vex',
    'subway',
    'pixel',
    'keyhole',
    'jackpot',
    'bikini',
    'nymph',
    'azure',
    'buff',
    'faking',
    'swivel',
    'zigzag',
    'nowadays',
    'buzzwords',
    'mystify',
    'stymied',
    'jelly',
    'voodoo',
    'mnemonic',
    'myth',
    'razzmatazz',
    'witchcraft',
    'fjord',
    'wellspring',
    'vodka',
    'quiz',
    'kilobyte',
    'syndrome',
    'yummy',
    'unknown',
    'blizzard',
    'curacao',
    'woozy',
    'pneumonia',
    'zit',
    'glowworm',
    'strengths',
    'disavow',
    'dwarves',
    'stretch',
    'sphinx',
    'gazebo',
  ];

  String generateWord() {
    var randomGenerator = Random();
    var randomIndex = randomGenerator.nextInt(_hangmanWords.length);

    return _hangmanWords[randomIndex].toUpperCase();
  }
}
