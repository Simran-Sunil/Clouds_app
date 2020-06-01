import 'package:flutter/material.dart';
import 'package:stars_and_clouds/helper/authenticate.dart';
import 'package:stars_and_clouds/helper/constants.dart';
import 'package:stars_and_clouds/helper/helperfunctions.dart';
import 'package:stars_and_clouds/services/auth.dart';
import 'package:stars_and_clouds/views/search.dart';
import 'package:stars_and_clouds/views/signin.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

AuthMethods authMethods= new AuthMethods();
@override
  void initState() {
    
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Image.asset('assets/logos.png',
        height: 70,
        ),
        actions: [
          GestureDetector(
            onTap:(){
              authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Authenticate() ));
            },
          
          child:Container(
            padding:EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.exit_to_app)),
          ),
        ],
      ), 
      floatingActionButton: FloatingActionButton(child:
      Icon(Icons.search),
      onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
      },),     
    );
  }
}