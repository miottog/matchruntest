import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {

  String text;
  IconData icon;

  CustomAppBar(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: InkWell(
        splashColor: Colors.lightBlueAccent,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Icon(icon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}