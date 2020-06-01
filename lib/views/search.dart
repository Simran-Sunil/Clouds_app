import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stars_and_clouds/helper/constants.dart';
import 'package:stars_and_clouds/helper/helperfunctions.dart';
import 'package:stars_and_clouds/services/database.dart';
import 'package:stars_and_clouds/widgets/widget.dart';
import 'conversation_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

String _myName;

class _SearchScreenState extends State<SearchScreen> {
  DatabaseMethods databaseMethods = new DatabaseMethods();
  TextEditingController searchTextEditingController =
      new TextEditingController();
  String myUserId;


  QuerySnapshot searchSnapShot;

  @override
  initState(){
    super.initState();
    getLoggedUserId();
  }

  /**
 * This will give you the userId of logged user
 */
  getLoggedUserId() async {
    try{
      var data = await FirebaseAuth.instance.currentUser();
      var user = await Firestore.instance.collection("users").where("email",isEqualTo: data.email).getDocuments();
      user.documents.forEach((element) {
        setState(() {
          myUserId = element.documentID;
        });
      });
      

    }catch(err){

    }
  }

  initiateSearch() {
    databaseMethods
        .getUserByUsername(searchTextEditingController.text)
        .then((val) {
      setState(() {
        searchSnapShot = val;
      });
    });
  }

  Widget searchList() {
    return searchSnapShot != null
        ? ListView.builder(
            itemCount: searchSnapShot.documents.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SearchTile(
                userName: searchSnapShot.documents[index].data['name'],
                userEmail: searchSnapShot.documents[index].data['email'],
                searchUserId: searchSnapShot.documents[index].documentID,
              );
            },
          )
        : Container();
  }

  /**
   * Additional parameter called searchedUserId is added to get the document Id of the 
   * person who has been tapped or  clicked
   */
  createChatroomAndStartConversation({String userName , @required String searchUserId}) {
    print("${Constants.myName}");
    if (userName != Constants.myName) {
      // String chatRoomId = getChatRoomId(userName, Constants.myName);

      /**
       * The reason I did this because you get both userId of yours as well the searched person
       * Its important, so that it will create a combination of unique Id
       */
      String chatRoomId = getChatRoomId(searchUserId, myUserId);

      List<String> users = [userName, Constants.myName];
      Map<String, dynamic> chatRoomMap = {
        "users": users,
        "chatroomid": chatRoomId,
      };
      DatabaseMethods().createChatRoom(chatRoomId, chatRoomMap);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ConversationScreen()));
    } else {
      print("You cannot send message to yourself");
    }
  }

  /**
   * New SeachuserId added to pass the same to createchat function
   */
  Widget SearchTile({String userName, String userEmail, @required String searchUserId}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                userName,
                style: mediumTextStyle(),
              ),
              Text(
                userEmail,
                style: mediumTextStyle(),
              ),
            ]),
            Spacer(),
            GestureDetector(
              onTap: () {
                createChatroomAndStartConversation(
                  userName: userName,
                  searchUserId: searchUserId
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  'Message',
                  style: mediumTextStyle(),
                ),
              ),
            )
          ],
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
          child: Column(
        children: [
          Container(
            color: Color(0x54FFFFFF),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                  controller: searchTextEditingController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Search username...",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none),
                )),
                GestureDetector(
                  onTap: () {
                    initiateSearch();
                  },
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color(0x36FFFFFF),
                            const Color(0x0FFFFFFFF),
                          ]),
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(12),
                      child: Image.asset('assets/search_logo.png')),
                )
              ],
            ),
          ),
          searchList()
        ],
      )),
    );
  }
}

getChatRoomId(String a, String b) {
  if (a.substring(0, 1).codeUnitAt(0) > b.substring(0, 1).codeUnitAt(0)) {
    return "$b\_$a";
  } else {
    return "$a\_$b";
  }
}
