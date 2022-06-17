import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:flutter/material.dart';
class QRCodes extends StatefulWidget {
  const QRCodes({Key key}) : super(key: key);

  @override
  State<QRCodes> createState() => _QRCodesState();
}

class _QRCodesState extends State<QRCodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
    );
  }
}
