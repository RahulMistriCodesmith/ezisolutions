import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:flutter/material.dart';
class Alerts extends StatefulWidget {
  const Alerts({Key key}) : super(key: key);

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
    );
  }
}
