import 'package:flutter/cupertino.dart';
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 60.0, horizontal: 0.0),
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
                    fontFamily: 'roboto',
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
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
