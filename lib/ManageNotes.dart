import 'package:flutter/Material.dart';
import 'EightSem.dart';
import 'FifthSem.dart';
import 'FourthSem.dart';
import 'SeventhSem.dart';
import 'SixthSem.dart';
import 'ThirdSem.dart';

class Transition {
  String data;
  Transition({this.data});

  static void trans(BuildContext context, data) {
    switch (data) {
      case "3rd sem":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ThirdSem()),
        );
        break;
      case "4th sem":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ForthSem()),
        );
        break;
      case "5th sem":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FifthSem()),
        );
        break;

      case "6th sem":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SixthSem()),
        );
        break;
      case "7th sem":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SeventhSem()),
        );
        break;

      case "8th sem":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EigthSem()),
        );
        break;

     
    }
  }
}