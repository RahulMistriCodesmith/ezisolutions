import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:flutter/material.dart';
class BookingDetails extends StatefulWidget {
  const BookingDetails({Key key}) : super(key: key);

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
    );
  }
}
