import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

import 'package:stars_and_clouds/views/conversation_screen.dart';

class Module {
  final String name, url;
  Module(this.name, this.url);
}

class Subjects {
  final String name;
  final List<Module> modules;

  Subjects(this.name, this.modules);
}

class ThirdSem extends StatefulWidget {
  @override
  _ThirdSemState createState() => new _ThirdSemState();
}

class _ThirdSemState extends State<ThirdSem> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Text(
            "Third Sem Notes",
            style: TextStyle(
              fontFamily: 'VarelaRound',
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body:ListViewBuilder());
  }
}

class PDFScreen extends StatelessWidget {
  String url = "";
  PDFScreen(this.url);

  Future<File> createFileOfPdfUrl(String url) async {
    // final url = "https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2Fdaa%20mod1.pdf?alt=media&token=5233b1bd-baa3-4009-ae63-633dc2eec233";
    final filename = 'test.pdf';
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: createFileOfPdfUrl(url),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PDFViewerScaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                title: Text("Document"),
              ),
              path: snapshot.data.path);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  Module selectedUser;

  List<Subjects> subject = [
    
    Subjects('Data Structures and Applications', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs33/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs33/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs33/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs33/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs33/m5.pdf'),
    ]),
    Subjects('Computer Organisation', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs34/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs34/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs34/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs34/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs34/m5.pdf'),
    ]),
    Subjects('Discrete  Mathematical Structures', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs36/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs36/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs36/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs36/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs36/m5.pdf'),
    ]),
    Subjects('Analog and Digital Electronics', [
      Module("Module 1-5",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2FFundamentals%20of%20Logic%20Design%20By%20Charles%20H.%20Roth%20-%20By%20EasyEngineering.net.pdf?alt=media&token=d9d8c40f-c207-4c64-83ff-9750634b40c4'),
      
    ]),
    Subjects('Software Engineering', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs42/m1.pdf'),
      Module("Module 2",
          'http://www.cs.toronto.edu/~sme/CSC340F/slides/11-objects.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs42/m2.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs42/m3.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs42/m4.pdf'),
    ]),
    
  ];
  static const scale = 100.0 / 72.0;
  static const margin = 4.0;
  static const padding = 1.0;
  static const wmargin = (margin + padding) * 2;

  String pathPDF = "";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subject.length,
        itemBuilder: (context, index) {
          return ListView(shrinkWrap: true, children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                width: 400,
                height: 80,
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
                          subject[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'VarelaRound',
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        child: DropdownButton<Module>(
                          value: selectedUser,
                          onChanged:(_){},
                          items: List<DropdownMenuItem<Module>>.from(subject[index].modules.map((e) {
                            return DropdownMenuItem<Module>(
                              value: e,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => PDFScreen(e.url)));
                                },
                                child: Text(
                                  e.name,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
          
          ]
          
          );
          
        });
  }
}
