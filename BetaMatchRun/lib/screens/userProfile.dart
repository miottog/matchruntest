import 'file:///C:/Users/gabriel.b.rodrigues/BetaMatchRun/lib/components/appBar.dart';
import 'package:BetaMatchRun/loginService/googleAuthProviderService.dart';
import 'package:BetaMatchRun/screens/settingsProfile.dart';
import 'package:flutter/material.dart';

class ProfileAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
          'Perfil',
          Icons.person,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
              color: Color(0xFFE3DFDF),
              border: Border.all(
                color: Color(0xFFC4C0C0),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    color: Colors.transparent,
                    child: ButtonTheme (
                      minWidth: 50.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountManager(),
                          ),
                        ),
                        child: Icon(
                          Icons.settings,
                          color: Color(0xFFFCFCFC),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: 10, left: 120, right: 20),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          GoogleAuthProviderService.instance.user.photoURL),
                      radius: 70,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      GoogleAuthProviderService.instance.user.displayName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 21.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.only(left: 20, top: 20, right: 20),
          //   child: ButtonTheme(
          //     minWidth: 50.0,
          //     height: 50.0,
          //     child: RaisedButton(
          //       onPressed: () => Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => AccountManager(),
          //         ),
          //       ),
          //       child: Icon(
          //         Icons.settings,
          //         color: Color(0xFFFCFCFC),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFE0E0E0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Runs',
                    style: TextStyle(
                      color: Color.fromRGBO(39, 105, 171, 1),
                      fontSize: 27,
                    ),
                  ),
                  Divider(
                    thickness: 2.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
