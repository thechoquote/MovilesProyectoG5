import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:trabajomovilesg5/config/themes.dart';

class PDFViewerPage extends StatefulWidget {
  final File file;

  const PDFViewerPage({Key? key, required this.file}) : super(key: key);

  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  late PDFViewController controller;
  int pages = 0;
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    final text = '${indexPage + 1} of $pages';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color2,
        title: Text(name),
        actions: pages >= 2 ? [
                Center(child: Text(text)),
                IconButton(
                  icon: Icon(Icons.chevron_left, size: 32),
                  onPressed: () {
                    final page = indexPage == 0 ? pages : indexPage - 1;
                    controller.setPage(page);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right, size: 32),
                  onPressed: () {
                    final page = indexPage == pages - 1 ? 0 : indexPage + 1;
                    controller.setPage(page);
                  },
                ),
              ]
            : null,
      ),
      body: Stack(
        children: [
          PDFView(
            filePath: widget.file.path,
            // autoSpacing: false,
            // swipeHorizontal: true,
            // pageSnap: false,
            // pageFling: false,
            onRender: (pages) => setState(() => this.pages = pages ?? 0),
            onViewCreated: (PDFViewController controller) =>
                setState(() => this.controller = controller),
            onPageChanged: (indexPage, _) =>
                setState(() => this.indexPage = indexPage ?? 0),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              backgroundColor: color2,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Resumen'),
                      content: Text('Los modelos de agrupamiento DBSCAN y k-means difieren en su manejo del ruido y en la identificación de grupos de diversas formas y tamaños. Mientras DBSCAN puede identificar puntos atípicos como ruido y reconocer conglomerados de formas irregulares basados en la densidad de puntos, k-means tiende a ser más sensible al ruido y a encontrar clústeres de formas geométricas, siendo menos efectivo para identificar grupos no convencionales. En un escenario práctico, en una empresa de servicios de entrega, DBSCAN podría utilizarse para identificar áreas geográficas con alta densidad de entregas pasadas. Esto permitiría optimizar las rutas de entrega estableciendo centros logísticos cerca de estas zonas densas y planificando rutas más efectivas, adaptando los recursos logísticos según la densidad de entregas en esas áreas identificadas.'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Cerrar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Icon(Icons.message),
            ),
          ),
        ],
      ),
    );
  }
}