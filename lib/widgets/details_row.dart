import 'package:flutter/material.dart';

class DetailsRow extends StatefulWidget {
  final IconData? icon;
  final String fieldName;
  final String fieldValue;

  const DetailsRow(
      {Key? key,
      required this.icon,
      required this.fieldName,
      required this.fieldValue})
      : super(key: key);

  @override
  _DetailsRowState createState() => _DetailsRowState(
        fieldName: fieldName,
        fieldValue: fieldValue,
        icon: icon,
      );
}

class _DetailsRowState extends State<DetailsRow> {
  late IconData? icon;
  late String fieldName;
  late String fieldValue;

  _DetailsRowState({
    required this.icon,
    required this.fieldName,
    required this.fieldValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(this.icon),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.fieldName,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  this.fieldValue,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
