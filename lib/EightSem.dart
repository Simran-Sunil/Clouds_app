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

class EightSem extends StatefulWidget {
  @override
  _EightSemState createState() => new _EightSemState();
}

class _EightSemState extends State<EightSem> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Text(
            "Eighth Sem Notes",
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
    
    Subjects('Internet of Things & Applications', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/8th-sem/15cs81/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/8th-sem/15cs81/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/8th-sem/15cs81/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/8th-sem/15cs81/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/8th-sem/15cs81/m5.pdf'),
    ]),
    Subjects('Mobile Computing', [
      Module("Module 1",
          'https://cseexamhacks.files.wordpress.com/2017/01/mobile-computing.pdf'),
      
    ]),
    Subjects('Storage Area Networks', [
      Module("Module 1",
          'https://kmitit4yr2semsanmaterial.files.wordpress.com/2017/08/unit-1.pdf'),
      Module("Module 2",
          'https://kmitit4yr2semsanmaterial.files.wordpress.com/2017/08/unit-2.pdf'),
      Module("Module 3",
          'https://kmitit4yr2semsanmaterial.files.wordpress.com/2017/08/unit-3.pdf'),
      Module("Module 4",
          'https://kmitit4yr2semsanmaterial.files.wordpress.com/2017/08/unit-4.pdf'),
      Module("Module 5",
          'https://kmitit4yr2semsanmaterial.files.wordpress.com/2017/08/unit-5.pdf'),
    ]),
    Subjects('Multicore Architecture & Programming', [
      Module("Module 1-5",
          'http://fmcet.in/CSE/CS6801_uw.pdf'),
      
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
                height: 82,
                decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: new BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey, width: 3)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(6.0),
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
