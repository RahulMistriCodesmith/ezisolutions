// ignore_for_file: unused_field

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/UI/Alerts/alerts.dart';
import 'package:ezisolutions/UI/Booking/bookingdetails.dart';
import 'package:ezisolutions/UI/Home/homepage.dart';
import 'package:ezisolutions/UI/My%20Profile/myprofile.dart';
import 'package:ezisolutions/UI/QRCodes/qrcodes.dart';
import 'package:flutter/material.dart';
class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {

  int _currentindex = 0;
  int _pState = 0;
  var pages = [
    HomePage(),
    BookingDetails(),
    QRCodes(),
    Alerts(),
    MyProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;
      _pState=_currentindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

        body:  pages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          backgroundColor: Colors.white,
          selectedItemColor: Appcolors.greenlight,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Bookings',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner_outlined),
              label: 'QR Code',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Alerts',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'My Profile',
              backgroundColor: Colors.white,
            ),
          ],

        ),

      ),
    );
  }
}
