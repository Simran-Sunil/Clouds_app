import 'package:flutter/material.dart';
import 'package:stars_and_clouds/Achievements.dart';
import 'package:stars_and_clouds/Events.dart';
import 'package:stars_and_clouds/Gallery.dart';
import 'package:stars_and_clouds/Notes.dart';
import 'package:stars_and_clouds/OfficeBearers.dart';
import 'package:stars_and_clouds/Updates.dart';
import 'package:stars_and_clouds/About.dart';
import 'package:stars_and_clouds/Chat.dart';



class Transition {
  String data;
  Transition({this.data});

  static void trans(BuildContext context, data) {
    switch (data) {
      case "Gallery":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Gallery()),
        );
        break;
      case "Office Bearers":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => OfficeBearers()),
        );
        break;
      case "Events":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Events()),
        );
        break;

      case "About":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => About()),
        );
        break;
      case "Achievements":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Achievements()),
        );
        break;
      case "Updates":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Updates()),
        );
        break;
      case "Chat":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>Chat()),
        );
        break;
      case "Notes":
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>Notes()),
        );
        break;
      
     
            }
          }
          
} 