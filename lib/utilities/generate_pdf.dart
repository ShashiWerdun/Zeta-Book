import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfwidgets;
import 'package:permission_handler/permission_handler.dart';
import 'package:zeta_book/screens/pdf_viewer.dart';
import 'package:zeta_book/utilities/fade_route.dart';

PDFGenerator(BuildContext context, String startDate, String endDate) async {
  await Permission.storage.request();
  pdfwidgets.Document pdf = pdfwidgets.Document();

  pdf.addPage(
    pdfwidgets.MultiPage(
        pageFormat: PdfPageFormat.a4.landscape,
        crossAxisAlignment: pdfwidgets.CrossAxisAlignment.start,
        build: (context) => [
              pdfwidgets.Table.fromTextArray(
                data: [
                  ["Transaction Name", "Date", "Time"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                  ["Transaction1", "14-05-2001", "10:15 PM"],
                ],
              )
            ]),
  );
  final String dir = (await getApplicationDocumentsDirectory()).path;
  String path = '$dir/($startDate)_To_($endDate).pdf';
  print(path);
  final File file = File(path);
  await file.writeAsBytes(await pdf.save());
  Navigator.push(context, FadeRoute(page: PdfViewerPage(path: path)));
}
