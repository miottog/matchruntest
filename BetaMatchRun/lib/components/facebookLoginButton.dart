import 'package:BetaMatchRun/loginService/facebookAuthProviderService.dart';
import 'package:BetaMatchRun/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';


class FacebookLoginButton extends StatefulWidget {

  @override
  _FacebookLoginButtonState createState() => _FacebookLoginButtonState();
}

class _FacebookLoginButtonState extends State<FacebookLoginButton> {

  @override
  Widget build(BuildContext context) => Container(
    height: 50,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: Color(0xFF3C5A99),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: SizedBox.expand(
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Entrar com Facebook",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.right,
            ),
            Container(
              child: SizedBox(
                child: Image.asset("images/fb-icon.png"),
                height: 28,
                width: 28,
              ),
            )
          ],
        ),
        onPressed: () async{
          EasyLoading.show(status: 'loading...');
          //await AuthFacebook().signInWithFacebook();
          await AuthFacebook().login();
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
