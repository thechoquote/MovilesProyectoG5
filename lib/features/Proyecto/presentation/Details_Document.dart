import 'package:trabajomovilesg5/features/Proyecto/domain/Archivo.dart';
import 'package:trabajomovilesg5/features/Proyecto/domain/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/features/Proyecto/domain/utils.dart';

class DetallesDocumento extends StatefulWidget {
  const DetallesDocumento({super.key});

  @override
  State<DetallesDocumento> createState() => _DetallesDocumento();
}


class _DetallesDocumento extends State<DetallesDocumento> {
  List<Archivo> archivos = [
    Archivo(id: 1, fileName: "Informe 01", mimeType: "application/pdf", datos: AppConstants.pdfBase64),
    Archivo(id: 2, fileName: "Informe 02", mimeType: "application/pdf", datos: AppConstants.pdfBase64),
    Archivo(id: 3, fileName: "Informe 03", mimeType: "application/pdf", datos: AppConstants.pdfBase64),
    Archivo(id: 4, fileName: "Informe 04", mimeType: "application/pdf", datos: AppConstants.pdfBase64),
    Archivo(id: 5, fileName: "Informe 05", mimeType: "application/pdf", datos: AppConstants.pdfBase64),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documentos'),
      ),

      body: Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          const Text(
            "Selecciona un archivo pdf para su visualizacion",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: GridView.count(
                padding: const EdgeInsets.only(right: 50.0, left: 50.0, top: 20.0),
                crossAxisCount: 2,
                childAspectRatio: 1,
                children: List.generate(archivos.length, (index) {
                  return TextButton(
                    onPressed: () {
                      Utils.base64ToPdf(archivos[index].datos, archivos[index].fileName, 'pdf');
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          const CircleBorder(
                            side: BorderSide(color: Colors.white54, width: 5),
                          ),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 100.0,
                          child: Image.asset('assets/pdf_icon.jpg'),
                        ),
                        Text(archivos[index].fileName,
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}
