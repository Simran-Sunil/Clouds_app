import 'package:flutter/material.dart';
import 'package:stars_and_clouds/helper/authenticate.dart';
import 'package:stars_and_clouds/views/chatRoomsScreen.dart';
import 'package:stars_and_clouds/views/signin.dart';
import 'package:stars_and_clouds/views/signup.dart';

import 'helper/helperfunctions.dart';

void main() {
  runApp(MaterialApp());
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool userIsLoggedIn;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chatting Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.deepPurple,
      ),
      home:  userIsLoggedIn != null ?  userIsLoggedIn ? ChatRoom() : Authenticate()
          : Container(
        child: Center(
          child: Authenticate(),
        ),
      ),
    );
  }
}
