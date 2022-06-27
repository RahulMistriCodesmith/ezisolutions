import 'package:ezisolutions/UI/Authorization/Login/languagepage.dart';
import 'package:ezisolutions/UI/Authorization/Login/mainloginpage.dart';
import 'package:ezisolutions/pincodexample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1234567890',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MainLoginPage(),
    );
  }
}


