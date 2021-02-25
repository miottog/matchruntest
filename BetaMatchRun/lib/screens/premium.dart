import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Run Plus+'),
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