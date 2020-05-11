import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  AboutState createState() {
    return new AboutState();
  }
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // position: DecorationPosition.background,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/aboutcg.png',
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
