import 'dart:math';
import 'package:english_words/english_words.dart';

var hangmanWords = [
  'boxcar',
  'quizzes',
  'jokes',
  'embezzle',
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
  'mystify',
  'stymied',
  'jelly',
  'voodoo',
  'myth',
  'fjord',
  'vodka',
  'quiz',
  'kilobyte',
  'syndrome',
  'yummy',
  'unknown',
  'blizzard',
  'curacao',
  'woozy',
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
var usedWord = hangmanWords[_random.nextInt(hangmanWords.length)].toUpperCase();
var testWord = adjectives[_random.nextInt(adjectives.length)];
