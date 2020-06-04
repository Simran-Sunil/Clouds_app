import 'package:flutter/material.dart';
import 'package:stars_and_clouds/helper/authenticate.dart';
import 'package:stars_and_clouds/helper/constants.dart';
import 'package:stars_and_clouds/helper/helperfunctions.dart';
import 'package:stars_and_clouds/services/auth.dart';
import 'package:stars_and_clouds/services/database.dart';
import 'package:stars_and_clouds/views/search.dart';
import 'package:stars_and_clouds/views/signin.dart';
import 'package:stars_and_clouds/widgets/widget.dart';

import 'conversation_screen.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  Stream chatRoomsStream;

  Widget chatRoomList(){
    return StreamBuilder(stream: chatRoomsStream,
    builder: (context, snapshot){
      return snapshot.hasData ?ListView.builder(
        itemCount: snapshot.data.documents.length,
        itemBuilder: (context,index) {
          return ChatRoomTile(
            snapshot.data.documents[index].data["chatroomid"]
            .toString().replaceAll("_", "")
            .replaceAll(Constants.myName, ""),
             snapshot.data.documents[index].data["chatroomid"]
          );
        }): Container();
    },
    );
  }

AuthMethods authMethods= new AuthMethods();
DatabaseMethods databaseMethods= new DatabaseMethods();
@override
  void initState() {
    getUserInfo();
    super.initState();
  }

  getUserInfo() async{
    Constants.myName = await HelperFunctions.getUserNameSharedPreference();
     databaseMethods.getChatRooms(Constants.myName).then((value){
      setState(() {
        chatRoomsStream = value;
      });
    });
    setState(() {
      
    });
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
      body: chatRoomList(),
      floatingActionButton: FloatingActionButton(child:
      Icon(Icons.search),
      onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
      },),     
    );
  }
}
class ChatRoomTile extends StatelessWidget {
  final String userName;
  final String chatRoomId;
  ChatRoomTile(this.userName, this.chatRoomId);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => 
        ConversationScreen(chatRoomId)));
      },
          child: Container(
            color: Colors.black26,
        padding: EdgeInsets.symmetric(horizontal :24,vertical:16),
        child:Row(children: <Widget>[
          Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(color:Colors.deepPurple,
            borderRadius:BorderRadius.circular(40)),
            child: Text("${userName.substring(0,1).toUpperCase()}",style: mediumTextStyle(),),
          ),
          SizedBox(width: 8,),
          Text(userName,style: mediumTextStyle(),)
          
        ],)
      ),
    );
  }
}