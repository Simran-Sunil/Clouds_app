import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class Item {
  const Item(this.name);
  final String name;
}

class ForthSem extends StatelessWidget {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Module 1'),
    const Item('Module 2'),
    const Item('Module 3'),
    const Item('Module 4'),
    const Item('Module 5'),
  ];
  static const scale = 100.0 / 72.0;
  static const margin = 4.0;
  static const padding = 1.0;
  static const wmargin = (margin + padding) * 2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text(
          "Fourth Sem Notes",
          style: TextStyle(
            fontFamily: 'VarelaRound',
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: <Widget>[
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Mathematics 1V',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: GestureDetector(
                                onTap: () {
                                  print("object");
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          color: Colors.white,
                                          child: PdfDocumentLoader(
                                            assetName: 'assets/daa mod1.pdf',
                                            documentBuilder: (context,
                                                    pdfDocument, pageCount) =>
                                                LayoutBuilder(
                                                    builder: (context,
                                                            constraints) =>
                                                        ListView.builder(
                                                            itemCount:
                                                                pageCount,
                                                            itemBuilder: (context,
                                                                    index) =>
                                                                Container(
                                                                    margin: EdgeInsets.all(
                                                                        margin),
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            padding),
                                                                    color: Colors
                                                                        .black12,
                                                                    child: PdfPageView(
                                                                        pdfDocument: pdfDocument,
                                                                        pageNumber: index + 1,
                                                                        // calculateSize is used to calculate the rendering page size
                                                                        calculateSize: (pageWidth, pageHeight, aspectRatio) => Size(constraints.maxWidth - wmargin, (constraints.maxWidth - wmargin) / aspectRatio))))),
                                          ),
                                        );
                                      });
                                },
                                child: Text(
                                  user.name,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Indian Constitution',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: GestureDetector(
                                onTap: () {
                                  print(user.name);
                                },
                                child: Text(
                                  user.name,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Design Algorithm',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Operating System',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Microprocessor\nand Controller',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Object Oriented Concepts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Data Communication',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<Item>(
                          hint: Text("Select item"),
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
