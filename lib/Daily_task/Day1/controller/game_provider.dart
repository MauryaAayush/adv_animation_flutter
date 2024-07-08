import 'package:flutter/material.dart';

class MatchGameProvider extends ChangeNotifier {

  final Map _matchedLetters = {};

  Map get matchedLetters => _matchedLetters;

  void markAsMatched(String letter) {
    _matchedLetters[letter] = true;
    notifyListeners();
  }
}