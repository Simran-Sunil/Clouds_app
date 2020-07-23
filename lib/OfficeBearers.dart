import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new OfficeBearers(),
  ));
}

class OfficeBearers extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<OfficeBearers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Posts',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: new Container(
        color: Colors.black,
        padding: new EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Text("Dr JV Gorabal"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '            President',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/shailesh.jpeg",
                                  ),
                                  Text("Shailesh Shetty S"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '       Cloud Coordinator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/darshan.jpeg",
                                  ),
                                  Text("Darshan"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '        Vice President',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/anvitha.jpeg",
                                  ),
                                  Text("Anvitha"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '            Secretary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/varnitha.jpeg",
                                  ),
                                  Text("Varnitha"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '            Treasurer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: Column(children: <Widget>[
                              Image.asset(
                                "assets/shravya.jpeg",
                              ),
                              Text("Shravya"),
                              SizedBox(height: 10),
                              Image.asset(
                                "assets/sampreetha2.jpeg",
                                height: 250,
                              ),
                              Text("Sampreetha"),
                            ]));
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '  Joint Treasurer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/vasu_d.jpeg",
                                  ),
                                  Text("Souravi"),
                                  Text("    Vasu Krishna"),
                                  Image.asset(
                                    "assets/pushparaj.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/saket.jpeg",
                                  ),
                                  Text("   Pushparaj"),
                                  Text("   Saket"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '       Event Coordinator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/prerana.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/sanjana.jpeg",
                                  ),
                                  Text("       Prerana"),
                                  Text("       Sanjana"),
                                  Image.asset(
                                    "assets/apeksha.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/anvitha.jpeg",
                                  ),
                                  Text("    Apeksha"),
                                  Text("    Anvitha"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '       Cultural Secretary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1),
                                //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/divya.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/nihal.jpeg",
                                  ),
                                  Text("Divya"),
                                  Text("Nihal"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '   Joint Cultural Secretary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/karthik.jpeg",
                                  ),
                                  Text("Mithali"),
                                  Text("Karthik Adyar"),
                                  Image.asset(
                                    "assets/samad.jpeg",
                                  ),
                                  Text("Samad"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '        Sports Secretary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/renil.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/akesh.jpeg",
                                  ),
                                  Text("Reniel"),
                                  Text("Akesh"),
                                  Image.asset(
                                    "assets/vaishakms.jpeg",
                                  ),
                                  Text("Vaishak"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '    Joint Sports Secretary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/meghana.jpeg",
                                  ),
                                  Text("Shreyas"),
                                  Text("Meghana"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '       Techical Secretary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/shravya.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/swathi.jpeg",
                                  ),
                                  Text("Shravya"),
                                  Text("Swathishree"),
                                  Image.asset("hod.jpeg"),
                                  Text("Sanath"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '   Joint Techical Secretary',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/manisha.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/bhargavi_bhat.jpeg",
                                  ),
                                  Text("Manisha Kottari"),
                                  Text("Bhargavi"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '    Placement Coordinator',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/maruthi.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/ramyashree.jpeg",
                                  ),
                                  Text("Maruthi"),
                                  Text("Ramyashree"),
                                  Image.asset(
                                    "assets/pooja.jpeg",
                                  ),
                                  Text("Pooja PS"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            ' Joint Placement Coordinator',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/deepak.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/prathiksha_hedge.jpeg",
                                  ),
                                  Text("Deepak"),
                                  Text("Pratheeksha"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '       Journal Secretary',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/sinchana.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/erin.jpeg",
                                  ),
                                  Text("Sinchana"),
                                  Text("Erin"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '   Joint Journal Secretary',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/sinchana.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/erin.jpeg",
                                  ),
                                  Text("Sinchana"),
                                  Text("Erin"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '     Brand Ambassader',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Text("Sandeep"),
                                  Text("Reshma Kumari"),
                                  Image.asset("assets/hod.jpeg"),
                                  Image.asset("assets/hod.jpeg"),
                                  Text("Shriyan"),
                                  Text("Raees"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '  Graphics/Design/Media',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                //  mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Image.asset(
                                    "assets/hod.jpeg",
                                  ),
                                  Text("Tushar Shetty"),
                                  Text("Vikranth"),
                                  Image.asset("assets/hod.jpeg"),
                                  Image.asset("assets/hod.jpeg"),
                                  Text("Vinu"),
                                  Text("Disha Shetty"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            ' Documentation & Marketing',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black,
              child: new Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Simran Sunil"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '       App Developer',
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontFamily: 'Parisienne',
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
