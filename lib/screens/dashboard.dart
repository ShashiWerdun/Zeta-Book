import 'package:flutter/material.dart';
import 'package:zeta_book/screens/customer_list.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomersScreen(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add_alt_1),
        onPressed: () {},
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
