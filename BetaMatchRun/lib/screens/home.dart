import 'package:BetaMatchRun/loginService/facebookAuthProviderService.dart';
import 'package:BetaMatchRun/loginService/googleAuthProviderService.dart';
import 'package:BetaMatchRun/screens/login.dart';
import 'package:BetaMatchRun/screens/premium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'userProfile.dart';
import 'help.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Correr'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            // CustomGoogleDrawnerHeader(
            //     GoogleAuthProviderService.instance.user.displayName,
            //     GoogleAuthProviderService.instance.user.email,
            //     GoogleAuthProviderService.instance.user.photoURL,
            // ),
            CustomListTitle(
              Icons.person,
              'Perfil',
              () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new ProfileAccount(),
                  ),
                );
              },
            ),
            CustomListTitle(
              Icons.attach_money,
              'Math Run Plus+',
              () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new Premium(),
                  ),
                );
              },
            ),
            CustomListTitle(
              Icons.help,
              'Ajuda',
              () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new Help(),
                  ),
                );
              },
            ),
            CustomListTitle(
              Icons.exit_to_app,
              'Sair',
              () async {
                EasyLoading.show(status: 'loading...');
                await GoogleAuthProviderService.instance.signOut();
                //await AuthFacebook().logOut();
                EasyLoading.dismiss();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            child: Image.asset('images/home.png'),
          ),
        ],
      ),
    );
  }
}

class CustomListTitle extends StatefulWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTitle(this.icon, this.text, this.onTap);

  @override
  _CustomListTitleState createState() => _CustomListTitleState();
}

class _CustomListTitleState extends State<CustomListTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.lightBlueAccent,
        onTap: widget.onTap,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(widget.icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomGoogleDrawnerHeader extends StatefulWidget {
  String name;
  String email;
  String photo;

  CustomGoogleDrawnerHeader(this.name, this.email, this.photo);

  @override
  _CustomDrawnerHeaderState createState() => _CustomDrawnerHeaderState();
}

class _CustomDrawnerHeaderState extends State<CustomGoogleDrawnerHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
      child: UserAccountsDrawerHeader(
        accountName: Text(widget.name),
        accountEmail: Text(widget.email),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage(widget.photo),
        ),
      ),
    );
  }
}

class CustomFacebookDrawnerHeader extends StatefulWidget {
  String name;
  String email;
  String photo;

  CustomFacebookDrawnerHeader(this.name, this.email, this.photo);

  @override
  _CustomFacebookDrawnerHeaderState createState() =>
      _CustomFacebookDrawnerHeaderState();
}

class _CustomFacebookDrawnerHeaderState extends State<CustomFacebookDrawnerHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
      child: UserAccountsDrawerHeader(
        accountName: Text(widget.name),
        accountEmail: Text(widget.email),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage(widget.photo),
        ),
      ),
    );
  }
}
