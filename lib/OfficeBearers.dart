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
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
                        child:Text(
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
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                              content: GridView(
                                padding: const EdgeInsets.all(15),

                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, mainAxisSpacing: 10),

                                // mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Shravya"),
                                  Text("Samrutha"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Souravi"),
                                  Text("Vasu Krishna"),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Pushparaj"),
                                  Text("Saket"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Prerana"),
                                  Text("Sanjana"),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Apeksha"),
                                  Text("Ankitha"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new  Padding(padding: const EdgeInsets.all(6.0),
                        child:Text(
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
                                        crossAxisCount: 2),
                                  //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Text("Mithali"),
                                  Text("Karthik Adyar"),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Reniel"),
                                  Text("Akesh"),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Shravya"),
                                  Text("Swathishree"),
                                  Image.asset("assets/person.png"),
                                  Text("Sanath"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Manisha Kottari"),
                                  Text("Bharavi"),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Maruthi"),
                                  Text("Ramyashree"),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Sandeep"),
                                  Text("Reshma Kumari"),
                                  Image.asset("assets/person.png"),
                                  Image.asset("assets/person.png"),
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                                    "assets/person.png",
                                  ),
                                  Image.asset(
                                    "assets/person.png",
                                  ),
                                  Text("Tushar Shetty"),
                                  Text("Vikranth"),
                                  Image.asset("assets/person.png"),
                                  
                                  Image.asset("assets/person.png"),
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
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
                        new  Padding(padding: const EdgeInsets.all(6.0),
                        child:Text(
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
