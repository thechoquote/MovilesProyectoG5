import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'dart:io';

import 'package:trabajomovilesg5/features/Documento/presentation/pdf_viewer_page.dart';
import 'package:trabajomovilesg5/config/themes.dart';

class ListPDF extends StatefulWidget {
  @override
  _ListPDFState createState() => _ListPDFState();
}

class _ListPDFState extends State<ListPDF>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:color2,
        title: Text('Documentos PDF'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color2, // this is the background color
          ),
          onPressed: () async {
            final path = 'assets/MD2.pdf'; // path of asset pdf file
            final file = await PDFApi.loadAsset(path);
            openPDF(context, file);
          },
          child: Text('MD 2 .pdf'),
        ),
      ),
    );
  }
}

class PDFApi {
  static Future<File> loadAsset(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();

    return _storeFile(path, bytes);
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}

void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
);

/*class _ListPDFState extends State<ListPDF> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('documents').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text ("No hay documentos disponibles");;
        }
        final documents = snapshot.data!.docs;
        return ListView.builder(
          itemCount: documents.length,
          itemBuilder: (context, index) {
            Map<String, dynamic> documentData = documents[index].data() as Map<String, dynamic>;
            return ListTile(
              title: Text(documentData['name']),
              subtitle: Text(documentData['description']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewPage(url: documentData['url']),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class PDFViewPage extends StatelessWidget {
  final String url;

  PDFViewPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return PDFView(
      filePath: url,
    );
  }
}*/



