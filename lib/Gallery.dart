import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp());

class Gallery extends StatefulWidget {
  @override
  GalleryState createState() {
      return new GalleryState();
    }
  }
  
 class GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // position: DecorationPosition.background,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/arpan_photo.jpeg',
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
