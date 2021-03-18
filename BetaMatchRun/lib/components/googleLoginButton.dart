import 'package:BetaMatchRun/loginService/googleAuthProviderService.dart';
import 'package:BetaMatchRun/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Google extends StatefulWidget {
  @override
  _GoogleState createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  @override
  Widget build(BuildContext context) => Container(
    height: 50,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: Color(0xFFF10707),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: SizedBox.expand(
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Entrar com Google",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.right,
            ),
            Container(
              child: SizedBox(
                child: Image.asset("images/google-icon.png"),
                height: 28,
                width: 28,
              ),
            )
          ],
        ),
        onPressed: () async {
          EasyLoading.show(status: 'loading...');
          await GoogleAuthProviderService.instance.signIn();
          EasyLoading.dismiss();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    ),
  );
}
