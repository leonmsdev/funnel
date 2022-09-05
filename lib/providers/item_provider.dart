import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  bool isActive = false;
  TextAlign textAlign = TextAlign.left;
  int? indexCount = 0;
  String content = "Heading";
  FontWeight textWeigth = FontWeight.w200;

  changeIsActive() async {
    isActive = !isActive;
    notifyListeners();
  }

  textAlignRigth() async {
    textAlign = TextAlign.end;
    indexCount = 2;
    notifyListeners();
  }

  textAlignCenter() async {
    textAlign = TextAlign.center;
    indexCount = 1;
    notifyListeners();
  }

  textAlignLeft() async {
    textAlign = TextAlign.start;
    indexCount = 0;
    notifyListeners();
  }

  changeContent(String text) {
    content = text;
    notifyListeners();
  }

  textBold() async {
    textWeigth = FontWeight.bold;
    notifyListeners();
  }

  textNormal() async {
    textWeigth = FontWeight.normal;
    notifyListeners();
  }

  textLigth() async {
    textWeigth = FontWeight.w300;
    notifyListeners();
  }
}
