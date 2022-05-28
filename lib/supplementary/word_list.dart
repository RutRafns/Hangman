import 'dart:math';
import 'package:english_words/english_words.dart';

var hangmanWords = [
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

// generates a new Random object
final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
var usedWord = hangmanWords[_random.nextInt(hangmanWords.length)];
var testWord = adjectives[_random.nextInt(adjectives.length)];
