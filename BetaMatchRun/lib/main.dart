import 'package:BetaMatchRun/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BetaMatchRun());

}
class BetaMatchRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BetaMatchRun',
      theme: ThemeData(
        primaryColor: Colors.blueAccent[300],
        accentColor: Colors.grey[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.grey[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Login(),
      builder: EasyLoading.init(),
    );
  }
}

