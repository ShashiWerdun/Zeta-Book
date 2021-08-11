import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeta_book/utilities/generate_pdf.dart';
import 'package:zeta_book/widgets/date_picker.dart';

class PdfGenerationScreen extends StatefulWidget {
  @override
  _PdfGenerationScreenState createState() => _PdfGenerationScreenState();
}

class _PdfGenerationScreenState extends State<PdfGenerationScreen> {
  DropdownDatePicker startDate = dropdownDatePicker();
  DropdownDatePicker endDate = dropdownDatePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report Generation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xff23bbe8),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "From:",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  startDate,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "To:",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  endDate,
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  PDFGenerator(
                      context, startDate.getDate('/'), endDate.getDate('/'));
                },
                child: Text("Print"),
              ),
              Text(
                "Note: The pdf will be saved at\n/data/user/0/com.example.zeta_book/app_flutter/",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
