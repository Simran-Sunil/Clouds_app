import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  getUserByUsername(String username) async {
    return await Firestore.instance.collection("users")
      .where("name", isEqualTo :username)                 //3
      .getDocuments();
    
  }

  getUserByUserEmail(String userEmail) async {
    return await Firestore.instance.collection("users")   //2
      .where("email", isEqualTo :userEmail)
      .getDocuments();
  }

  uploadUserInfo(userMap) async{
    await Firestore.instance.collection("users").add(userMap).catchError((e){    //1
      print(e.toString());
    });
  }

  createChatRoom(String chatRoomId,chatRoomMap) async {
    await Firestore.instance.collection("ChatRoom")
    .document(chatRoomId).setData(chatRoomMap).catchError((e){            //4
      print(e.toString());
    });
  }

  addConversationMessages(String chatRoomId, messageMap){            //6
    Firestore.instance.collection("ChatRoom")
    .document(chatRoomId)
    .collection("chats")
    .add(messageMap)
    .catchError((e){
      print(e.toString());
    });
  }

  getConversationMessages(String chatRoomId) async{
    return await Firestore.instance.collection("ChatRoom")          //5
    .document(chatRoomId)
    .collection("chats")
    .orderBy("time",descending: false)
    .snapshots();
    
  }

  getChatRooms(String userName) async{
    return await Firestore.instance.collection("ChatRoom")
    .where("users",arrayContains:userName)
    .snapshots();
  } 

  getUserFromDocId({String docId}) async {
    var data = await Firestore.instance.collection("user").document(docId).get();
    return data.data['name'];
  }
}
