import 'package:flutter/material.dart';

class BusinessDetailsPage extends StatefulWidget {
  const BusinessDetailsPage({Key? key}) : super(key: key);

  @override
  _BusinessDetailsPageState createState() => _BusinessDetailsPageState();
}

class _BusinessDetailsPageState extends State<BusinessDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('This page shows details about this Business'),
      ),
    );
  }
}
