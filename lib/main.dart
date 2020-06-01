import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'Updates.dart';
import 'About.dart';
import 'Events.dart';
import 'Gallery.dart';
import 'OfficeBearers.dart';
import 'TransitionManagement.dart';
import 'Notes.dart';
import 'Chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/profilePage": (BuildContext context) => new HomePage(),
        "/officeBearers": (BuildContext context) => new OfficeBearers(),
        "/events": (BuildContext context) => new Events(),
        "/gallery": (BuildContext context) => new Gallery(),
        "/about": (BuildContext context) => new About(),
        "/updates": (BuildContext context) => new Updates(),
        "/chat": (BuildContext context) => new Chat(),
        "/notes": (BuildContext context) => new Notes(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 680,
          height: 700,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.pink, Colors.deepPurple])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/logos.png',
                width: 300,
              ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<SecondPage> {
  final List<String> _listViewData = [
    "Office Bearers",
    "About",
    "Gallery",
    "Achievements",
    "Events",
    "Updates",
    "Chat",
    "Notes",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Policies"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(' Clouds'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(15.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 12.0,
        children: _listViewData
            .map(
              (data) => GestureDetector(
                onTap: () {
                  Transition.trans(context, data);
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
