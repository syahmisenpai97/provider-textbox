import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  String textDisplay;

  TextProvider({
    this.textDisplay = "",
  });

  void changetext({
    required String newText,
  }) {
    textDisplay = newText; 
    notifyListeners();
  }
}
