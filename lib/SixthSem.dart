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

class SixthSem extends StatefulWidget {
  @override
  _SixthSemState createState() => new _SixthSemState();
}

class _SixthSemState extends State<SixthSem> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Text(
            "Sixth Sem Notes",
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
    
    Subjects('System Software and Compiler Design', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs63/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs63/m3.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs63/m4.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs63/m2.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs63/m5.pdf'),
    ]),
    Subjects('Computer Graphics & Visualization', [
      Module("Module 1",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs62/m1.pdf'),
      Module("Module 2",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs62/m2.pdf'),
      Module("Module 3",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs62/m3.pdf'),
      Module("Module 4",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs62/m4.pdf'),
      Module("Module 5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/6th-sem/15cs62/m5.pdf'),
    ]),
    Subjects('Web Technology and its Applications', [
      Module("Module 1",
          'https://drive.google.com/file/d/1pRm20-caBzlt954MwkFiDgmZxr4nLe7a/view'),
      Module("Module 2",
          'https://drive.google.com/file/d/1pALRDNAAl9MsdJUhtmrKcwmLD5uwwFAD/view'),
      Module("Module 3",
          'https://drive.google.com/file/d/1N51B9q_xkxTNfgQpEk3Tye5MT1I4pYAQ/view'),
      Module("Module 4",
          'https://drive.google.com/file/d/1O-O1bIY7ms_v4Wl2fki0-7ZU3VaQ1ztk/view'),
      Module("Module 5",
          'https://drive.google.com/file/d/1pizyqCL0fnnUAQXCA2O11wxYLOnMdlpT/view'),
    ]),
    Subjects('Data Mining & Data Warehouse', [
      Module("Module 1",
          'https://drive.google.com/file/d/1IcpkyyZ_nb_LY_pI1SEXDfrpqXl2QGS_/view'),
      Module("Module 2",
          'https://drive.google.com/file/d/10Fa12Ur6vT5mzX6dEt1qtATOXlTqY79Z/view'),
      Module("Module 3",
          'https://drive.google.com/file/d/10b3eVrd2P4xZNOsWjRBx0-1oawo1J7Ne/view'),
      Module("Module 4",
          'https://drive.google.com/file/d/16M5x-sSOndCueH8BoUxV0kIELzDJc5yv/view'),
      Module("Module 5",
          'https://drive.google.com/file/d/1wyJecWX7E6GQ_nr-IS2wigxbTlYly0zK/view'),
    ]),
    Subjects('Object Oriented Modeling & Design', [
      Module("Module 1",
          'https://drive.google.com/file/d/0B-ITW-kTxwdfSzVpM3ltQ0J6akU/view'),
      Module("Module 2",
          'https://drive.google.com/file/d/0B-ITW-kTxwdfWlBpV3YtUTA1UDQ/view'),
      Module("Module 3",
          'https://drive.google.com/file/d/0B-ITW-kTxwdfdEtaVXJUaXU5d1U/view'),
      Module("Module 4",
          'https://drive.google.com/file/d/1kCsDOjfoaASN7MOah9w0DsSkAvCUOpDI/view'),
      Module("Module 5",
          'https://drive.google.com/file/d/1PK54eC5grZBTPcylTLAZM2wUBUp7N_kv/view'),
    ]),
    Subjects('Cloud Computing', [
      Module("Modules 1-5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/7th-sem/15cs742.pdf'),
    ]),
    Subjects('Advanced Java and J2EE', [
      Module("Modules 1-5",
          'http://www.vtuupdates.in/wp-content/uploads/cse/5th-sem/15cs553.pdf'),
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
