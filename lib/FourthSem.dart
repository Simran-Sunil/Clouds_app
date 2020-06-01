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

class ForthSem extends StatefulWidget {
  @override
  _ForthSemState createState() => new _ForthSemState();
}

class _ForthSemState extends State<ForthSem> {
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
    Subjects('Indian Constitution', [
      Module("Full notes",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2F1constitution_of_india___professional_ethics_%5B15cip18%5D-notes.pdf?alt=media&token=131e7c29-002a-4543-900d-2c8ce6dded11'),
    ]),
    Subjects('Design Algorithm', [
      Module("Module 1",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2Fdaa%20mod1.pdf?alt=media&token=5233b1bd-baa3-4009-ae63-633dc2eec233'),
      Module("Module 2",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2Fdaa%20mod%202.pdf?alt=media&token=46680016-60a6-4e30-95ed-c16139a83faa'),
      Module("Module 3",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2Fdaa%20m3.pdf?alt=media&token=11bfc429-ce5a-4c60-9276-2a0160fb4c22'),
      Module("Module 4",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2Fm4.pdf?alt=media&token=e6e41f7c-c854-43e5-8a1e-a8626f9cdb63'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs43/m5.pdf'),
    ]),
    Subjects('Operating System', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs64/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs64/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs64/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs64/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs64/m5.pdf'),
    ]),
    Subjects('Microprocessor and Controller', [
      Module("Module 1",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2FMicrocontroller%20and%20Embedded%20Systems%20-%20Module%204.pdf?alt=media&token=0090ac77-2755-4141-91b3-9ae70055c534'),
      Module("Module 2",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2FMicrocontroller%20and%20Embedded%20Systems%20-%20Module%205.pdf?alt=media&token=9e48dc41-7e54-46e6-a092-fe7e509c5872'),
      Module("Module 3",
          'https://firebasestorage.googleapis.com/v0/b/clouds-27488.appspot.com/o/pdfs%2Fmm%20mod%203.pdf?alt=media&token=3af3a286-f77f-49bd-b653-bd31e3520e9c'),
      Module("Module 4",
          'https://drive.google.com/file/d/1XR8Whr5fj44z72oI6i10Z_SUqM44HIp1/view'),
      Module("Module 5",
          'https://drive.google.com/file/d/1NVXDXae6qOFD-eSHgyEOuU5fNoBQtZ4_/view'),
    ]),
    Subjects('Object Oriented Concepts', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs45/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs45/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs45/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs45/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs45/m5.pdf'),
    ]),
    Subjects('Data Communication', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs46/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs46/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs46/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/4th-sem/15cs46/m4.pdf'),
      Module("Module 5",
          'https://drive.google.com/file/d/0BzfpGB351Qv_Tk96ME1kdmp4UFU/view'),
    ]),
  ];
  static const scale = 100.0 / 72.0;
  static const margin = 4.0;
  static const padding = 1.0;
  static const wmargin = (margin + padding) * 2;

  String pathPDF = "";

  //final subjects=['Mathematics IV','Indian Constitution','Design Algorithm','Operating System','Microprocessor and Controller','Object Oriented Concepts','Data Communication'];
  //final modules=["Module 1","Module 2","Module 3","Module 4","Module 5"];
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
            )
          ]);
        });
  }
}
