import 'package:flutter/material.dart';
import 'package:zeta_book/screens/home_page.dart';
import 'package:zeta_book/utilities/fade_route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool otpSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login using phone'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff67d0f6),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                                fit: BoxFit.contain),
                          ),
                          height: 100,
                          width: 100,
                        ),
                        tag: 'splash_logo',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your phone number",
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                              color: Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          hintStyle: TextStyle(
                              color: Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          focusedBorder: OutlineInputBorder(),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      if (otpSent)
                        Column(children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Enter the OTP sent",
                              labelText: "One-time Password",
                              labelStyle: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                              hintStyle: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                              focusedBorder: OutlineInputBorder(),
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            maxLength: 6,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ]),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (!otpSent)
                              otpSent = true;
                            else
                              Navigator.pushReplacement(
                                  context, FadeRoute(page: HomePage()));
                          });
                        },
                        child: Text(
                          otpSent ? 'Verify OTP' : 'Send OTP',
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black12)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
