import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height - 60,
        width: MediaQuery.of(context).size.width - 60,
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
                  color: Colors.grey,
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
                    color: Colors.grey,
                    // fontFamily: 'roboto',
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
                    fontFamily: 'roboto',
                    // fontStyle: FontStyle.italic,
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
                    color: Colors.grey,
                    // fontFamily: 'roboto',
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
                    // fontStyle: FontStyle.italic,
                    fontFamily: 'roboto',
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
                fontFamily: 'roboto',
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width - 60 - 25,
              decoration: BoxDecoration(
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
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffa0d5ea),
                      Color(0xff38b5e2),
                      Color(0xff237bb3)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
