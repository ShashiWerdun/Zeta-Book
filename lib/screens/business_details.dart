import 'package:flutter/material.dart';
import 'package:zeta_book/widgets/buttons.dart';
import 'package:zeta_book/widgets/details_row.dart';
import 'package:zeta_book/widgets/dividers.dart';

class BusinessDetailsPage extends StatefulWidget {
  const BusinessDetailsPage({Key? key}) : super(key: key);

  @override
  _BusinessDetailsPageState createState() => _BusinessDetailsPageState();
}

class _BusinessDetailsPageState extends State<BusinessDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    'Business Details',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              Image.asset('assets/images/splash_logo.png'),
              SizedBox(
                height: 20,
              ),
              DetailsRow(
                  icon: Icons.business,
                  fieldName: 'Business Name',
                  fieldValue: 'Chaitanya Startup'),
              DetailsDivider(),
              DetailsRow(
                  icon: Icons.contact_phone_rounded,
                  fieldName: 'Registered Phone Number',
                  fieldValue: '7680973625'),
              DetailsDivider(),
              DetailsRow(
                  icon: Icons.my_location,
                  fieldName: 'Located at',
                  fieldValue: 'Hyderabad, Telangana, India'),
              DetailsDivider(),
              DeleteButton(
                toDelete: 'business',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
