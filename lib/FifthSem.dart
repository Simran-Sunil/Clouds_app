import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class Module {
  final String name, url;
  Module(this.name, this.url);
}

class Subjects {
  final String name;
  final List<Module> modules;

  Subjects(this.name, this.modules);
}

class FifthSem extends StatefulWidget {
  @override
  _FifthSemState createState() => new _FifthSemState();
}

class _FifthSemState extends State<FifthSem> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Text(
            "Fifth Sem Notes",
            style: TextStyle(
              fontFamily: 'VarelaRound',
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListViewBuilder());
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
    
    Subjects('M & E for IT Industry', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs51/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs51/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs51/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs51/m4.pdf'),
      Module("Module 5",
          'https://drive.google.com/file/d/1kXBvqCNNA2X42CUpAUpTKozMdbDFM4S1/view'),
    ]),
    Subjects('Computer Networks', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs52/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs52/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs52/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs52/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs52/m5.pdf'),
    ]),
    Subjects('Database Management System', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs53/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs53/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs53/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs53/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs53/m5.pdf'),
    ]),
    Subjects('Automata Theory & Computability', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs54/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs54/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs54/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs54/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs54/m5.pdf'),
    ]),
    Subjects('Application Development using Python', [
      Module("Module 1",
          'http://www.chetanahegde.in/wp-content/uploads/2018/02/Module1_Python_15CS664.pdf'),
      Module("Module 2",
          'http://www.chetanahegde.in/wp-content/uploads/2018/02/Module2_Python_15CS664.pdf'),
      Module("Module 3",
          'http://www.chetanahegde.in/wp-content/uploads/2018/02/Module3_Lists_Dictionaries_Tuples.pdf'),
      Module("Module 4",
          'http://www.chetanahegde.in/wp-content/uploads/2018/02/Module4_Python_15CS664.pdf'),
      Module("Module 5",
          'http://www.chetanahegde.in/wp-content/uploads/2018/02/Module5_Python_15CS664.pdf'),
    ]),
    Subjects('UNIX Programming', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs35/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs35/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs35/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs35/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/3rd-sem/15cs35/m5.pdf'),
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
                height: 85,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
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
                        width: 91,
                        child:
                         DropdownButton<Module>(
                          
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
            )
          ]);
        });
  }
}
