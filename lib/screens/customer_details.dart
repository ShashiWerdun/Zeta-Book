import 'package:flutter/material.dart';
import 'package:zeta_book/widgets/buttons.dart';
import 'package:zeta_book/widgets/details_row.dart';
import 'package:zeta_book/widgets/dividers.dart';

class CustomerDetailsScreen extends StatefulWidget {
  const CustomerDetailsScreen({Key? key}) : super(key: key);

  @override
  _CustomerDetailsScreenState createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customer Details',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('assets/images/splash_logo.png'),
              SizedBox(
                height: 20,
              ),
              DetailsRow(
                  icon: Icons.person,
                  fieldName: 'Customer Name',
                  fieldValue: 'Chaitanya Chakka'),
              DetailsDivider(),
              DetailsRow(
                  icon: Icons.phone,
                  fieldName: 'Mobile Number',
                  fieldValue: '7680973625'),
              DetailsDivider(),
              DetailsRow(
                  icon: Icons.add_location,
                  fieldName: 'Address',
                  fieldValue: 'Hyderabad, Telangana, India'),
              DetailsDivider(),
              DeleteButton(toDelete: 'customer'),
            ],
          ),
        ),
      ),
    );
  }
}
