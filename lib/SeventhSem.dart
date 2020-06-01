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

class SeventhSem extends StatefulWidget {
  @override
  _SeventhSemState createState() => new _SeventhSemState();
}

class _SeventhSemState extends State<SeventhSem> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Text(
            "Seventh Sem Notes",
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
    
    Subjects('Artificial Intelligence & Machine Learning', [
      Module("Module 1-5",
          "https://news.vidyaacademy.ac.in/wp-content/uploads/2018/10/NotesOnMachineLearningForBTech-1.pdf"),
    ]),
    Subjects('Software Architecture & Design Patterns', [
      Module("Module 1-5",
          "http://vtucs.com/wp-content/uploads/2015/02/CSE-VII-SOFTWARE-ARCHITECTURES-06IS72-NOTES.pdf"),
    ]),
    
    Subjects('Advanced Computer Architectures', [
      Module("Module 1",
          'https://drive.google.com/file/d/1FOCCHuJuv-1OCA6gehXbaeFKnKv3VM6f/vieww'),
      Module("Module 2",
          'https://drive.google.com/file/d/1CSa3dGTPqwc11Ynm5V0Hp2ZgJL2Ei04W/view'),
      Module("Module 3",
          'https://drive.google.com/file/d/1CSa3dGTPqwc11Ynm5V0Hp2ZgJL2Ei04W/view'),
      Module("Module 4",
          'https://drive.google.com/file/d/1Bnqx7srC4skAEgu9GnJcRnbsdOkl1WBK/view'),
      Module("Module 5",
          'https://drive.google.com/file/d/1Bnqx7srC4skAEgu9GnJcRnbsdOkl1WBK/view'),
    ]),
    Subjects('User Interface Design', [
      Module("Module 1-5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/8th-sem/15cs832.pdf'),
    
    ]),
    Subjects('Digital Image Processing', [
      Module("Modules 1-5",
          'https://mrcet.com/downloads/digital_notes/ECE/IV%20Year/6.Digital%20Image%20Processing.pdf'),
    ]),
    Subjects('Network Management', [
      Module("Modules 1-5",
          'http://mitmysuruise.weebly.com/uploads/5/7/0/9/57091477/vtu_8th_sem_cse_network_management_systems_notes_10cs834.pdf'),
    ]),
    Subjects('Cryptography', [
      Module("Modules 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs61/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs61/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs61/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs61/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs61/m5.pdf'),
          
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
                height: 70,
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
            )
          ]);
        });
  }
}
