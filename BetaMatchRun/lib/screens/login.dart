import 'package:BetaMatchRun/components/appVersion.dart';
import 'package:BetaMatchRun/components/facebookLoginButton.dart';
import 'package:BetaMatchRun/components/googleLoginButton.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("images/logoRunMatch.png"),
            ),
            SizedBox(height: 90),
            Google(),
            SizedBox(height: 10),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: Text(
                "ou",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            FacebookLoginButton(),
            SizedBox(height: 200),
            AppVersion(),
          ],
        ),
      ),
    );
  }
}
