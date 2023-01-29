import 'package:flutter/material.dart';

class SoundProvider with ChangeNotifier{

  bool isSoundOn = true;

  void toggleSoundOn (){
    isSoundOn = !isSoundOn;
    notifyListeners();
  }
}