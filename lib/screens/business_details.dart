import 'package:flutter/material.dart';

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
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Image.asset('assets/images/splash_logo.png'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.business),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Business Name',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Chaitanya Startup',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.white,
              ),
              Row(
                children: [
                  Icon(Icons.contact_phone_rounded),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Registered Phone Number',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '7680973625',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.white,
              ),
              Row(
                children: [
                  Icon(Icons.my_location),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Hyderabad, Telangana, India',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.white,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Delete Business',
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Theme.of(context).cardTheme.shadowColor,
                  primary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
