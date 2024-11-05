import 'package:flutter/material.dart';

class TextNotifier extends ChangeNotifier {
  String _text = "";

  String get text => _text;

  void updateText(String str) {
    _text = str;
    notifyListeners();
  }
}
