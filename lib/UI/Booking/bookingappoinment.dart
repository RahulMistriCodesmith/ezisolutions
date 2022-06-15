// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';
class BookingAppoinment extends StatefulWidget {
  const BookingAppoinment({Key key}) : super(key: key);

  @override
  State<BookingAppoinment> createState() => _BookingAppoinmentState();
}

class _BookingAppoinmentState extends State<BookingAppoinment> {

  final int _activeCurrentStep = 0;

  CalendarController _controller;
  Map<DateTime, List<dynamic>> _events;
  List<dynamic> _selectedEvents;
  SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _events = {};
    _selectedEvents = [];
    prefsData();
  }

  prefsData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _events = Map<DateTime, List<dynamic>>.from(
          decodeMap(json.decode(prefs.getString("events") ?? "{}")));
    });
  }

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }
  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }

  List<Step> stepList() => [

    Step(
      state: _activeCurrentStep <= 0 ? StepState.editing : _activeCurrentStep <= 1 ? StepState.complete : StepState.complete,
      isActive: _activeCurrentStep >= 0,
      title: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Appcolors.green1,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(50),
            ),
            width: 40,
            height: 40,
            child: Center(
              child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                  color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
              ),),
            ),
          ),
          Text('Select'),
          Text('Date & Slot'),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Choose Date',style: Textstyle2Light18.appbartextstyle.copyWith(
            fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
          ),),

          SizedBox(height: 10),

          Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TableCalendar(
              events: _events,
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                  canEventMarkersOverflow: true,
                  todayColor: Appcolors.green1,
                  selectedColor: Appcolors.green1,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date, events,holidays) {
                setState(() {
                  _selectedEvents = events;
                });
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),
          ),
          ..._selectedEvents.map((event) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height/20,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)
              ),
              child: Center(
                  child: Text(event,
                    style: TextStyle(color: Colors.blue,
                        fontWeight: FontWeight.bold,fontSize: 16),)
              ),
            ),
          )),

          SizedBox(height: 15),

          Text('Choose Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
              fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
          ),),

          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text('Morning',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontSize: 15,fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ),

        ],
      ),
    ),

    Step(
        state:
        _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrentStep >= 1,
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 40,
              height: 40,
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Review &'),
            Text('Payment'),
          ],
        ),
        content: Column(
          children: [


          ],
        )),

    Step(
        state:
        _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrentStep >= 1,
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 40,
              height: 40,
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Confirmation'),
            Text('Receipt'),
          ],
        ),
        content: Column(
          children: [


          ],
        ))

  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(
                      width: width*0.25,
                    ),

                    Text('Schedule Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(

              width: width*2,
              height: height,
              child: Stepper(
                elevation: 0,
                type: StepperType.horizontal,
                currentStep: _activeCurrentStep,
                steps: stepList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
