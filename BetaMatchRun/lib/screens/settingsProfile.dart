import 'file:///C:/Users/gabriel.b.rodrigues/BetaMatchRun/lib/components/appBar.dart';
import 'package:flutter/material.dart';

class AccountManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
          'Configurações',
          Icons.settings,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            child: Image.asset('images/developingImage.png'),
          ),
        ],
      ),
    );
  }
}