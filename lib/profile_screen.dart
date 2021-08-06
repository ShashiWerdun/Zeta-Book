import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final bool darkTheme = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: darkTheme ? Colors.blueGrey : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Profile",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 0.0),
                child: Container(
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 80,
                    ),
                  ),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: darkTheme ? Color(0xFF3C3C3C) : Colors.grey,
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/splash_logo.png'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Name: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Anonymous",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Phone Number: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "1234567890",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Divider(
                  height: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                "Business Card",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width - 60 - 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image:
                          AssetImage('assets/images/business_card_design.jpeg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Color(0xffbab7b7),
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My Business",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Anonymous",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "1234567890",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Business Address",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
