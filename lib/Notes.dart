import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'TransManage.dart';
import 'package:async/async.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      home:Notes(),
    ));


class Notes extends StatefulWidget {
  @override
  _HomepageState createState() => new _HomepageState();
}

class _HomepageState extends State<Notes> {


  void getData() async {
    var data =  Firestore.instance.collection("subject").snapshots();
    data.listen((onData){
      onData.documents.forEach((a){
        print(a.data);
      });
    });
  }

  final List<String> _listViewData = [
    "3rd sem",
    "4th sem",
    "5th sem",
    "6th sem",
    "7th sem",
    "8th sem",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Notes...',
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(15.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 12.0,
        children: _listViewData
            .map(
              (data) => GestureDetector(
                onTap: ()  {
                   getData();
                  // Transition.trans(context, data);
                },
                child: GradientCard(
                  gradient: Gradients.cosmicFusion,
                  shadowColor:
                      Gradients.rainbowBlue.colors.last.withOpacity(0.25),
                  elevation: 8,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        data,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
