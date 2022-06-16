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

  int _activeCurrentStep = 0;
  static var dropdownValue = 'Home';
  static var dropdownValue2 = 'Anyone(Default)';
  bool jobtype = false;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Morning',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.green2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('7:00 AM',style: Textstyle4Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.green2
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.green2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('8:00 AM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.green2
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.green2),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('9:00 AM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.green2
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('10:00 AM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),

                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('11:00 AM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Afternoon',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('12:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('1:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.greenlight
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('2:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('3:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),

                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('4:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Evening',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('5:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('6:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('7:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),

                        SizedBox(width: 8,),

                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Text('8:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),

                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('9:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('NIGHT',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 10,),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('10:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,
                      ),),
                    ),

                    SizedBox(width: 5,),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.green2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('10:30 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.green2
                      ),),
                    ),

                    SizedBox(width: 5,),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.green2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('11:00 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.green2
                      ),),
                    ),

                    SizedBox(width: 5,),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.green2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Text('11:30 PM',style: Textstyle4Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,color: Appcolors.green2
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
              ],
            ),
          ),

          SizedBox(height: 15),

          Text('Customize Your Experience',style: Textstyle2Light18.appbartextstyle.copyWith(
              fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
          ),),

          SizedBox(height: 10,),

          Container(

            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Booking Type',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 3,),

                Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.greenlight)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                    ),
                    value: dropdownValue,
                    icon: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child: const Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,)),
                    elevation: 16,
                    style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black
                    ),
                    onChanged: (String newValue) {
                      dropdownValue = newValue;
                    },

                    items: <String>['Home']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),

                  ),
                ),

                SizedBox(height: 10,),

                Text('Choose EZian',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 2,),

                Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Appcolors.greenlight)
                  ),

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                    ),
                    value: dropdownValue2,
                    icon: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child: const Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,)),
                    elevation: 16,
                    style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black
                    ),
                    onChanged: (String newValue) {
                      dropdownValue2 = newValue;
                    },

                    items: <String>['Anyone(Default)']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),

                  ),
                ),

                SizedBox(height: 10,),

                Text('Discount Code',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 2,),

                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Appcolors.greenlight)
                  ),
                  child: TextFormField(
                    decoration: Inputdec3.inputDecoration.copyWith(
                      suffixIcon: Icon(Icons.edit_outlined,color: Appcolors.greenlight,size: 30,),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Text('Services Chosen',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 15,fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 5),

                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Appcolors.greenlight)
                  ),
                  child: Row(
                    children: [
                      Text('Kids Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600,
                      ),),
                      
                      Expanded(child: SizedBox()),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w600,
                          ),),
                          Text('20 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),

                      SizedBox(width: 20,),

                      Image.asset('assest/Iocns/minusicon.png',scale: 4,),

                      SizedBox(width: 5),

                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child:  Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 15,fontWeight: FontWeight.w700,
                        ),),
                      ),

                      SizedBox(width: 5),

                      Image.asset('assest/Iocns/addicon1.png',scale: 4,),

                    ],
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Appcolors.greenlight)
                  ),
                  child: Row(
                    children: [
                      Text('Kids Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600,
                      ),),

                      Expanded(child: SizedBox()),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w600,
                          ),),
                          Text('20 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),

                      SizedBox(width: 20,),

                      Image.asset('assest/Iocns/minusicon.png',scale: 4,),

                      SizedBox(width: 5),

                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 15,fontWeight: FontWeight.w700,
                        ),),
                      ),

                      SizedBox(width: 5),

                      Image.asset('assest/Iocns/addicon1.png',scale: 4,),

                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Row(
                  children: [
                    GestureDetector(

                      onTap: (){
                        Navigator.pop(context);
                      },

                      child: Container(
                        padding: EdgeInsets.only(bottom: 3,right: 15,left: 15),
                        decoration: BoxDecoration(
                            color: Appcolors.green1,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.clear,size: 45,color: Colors.red,),

                            Text('Cancel',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    
                    Expanded(child: SizedBox()),
                    
                    GestureDetector(

                      onTap: (){
                        setState(() {
                          _activeCurrentStep += 1;
                        });
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                      },

                      child: Container(
                        width: 250,
                        padding: EdgeInsets.only(top: 15,bottom: 15),
                        decoration: BoxDecoration(
                            color: Appcolors.green1,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child: Center(
                          child: Text('Proceed',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 30,fontWeight: FontWeight.w600,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),

          SizedBox(height: 20,),

        ],
      ),
    ),

    Step(

        state: _activeCurrentStep <= 1 ? StepState.editing : _activeCurrentStep <= 2 ? StepState.complete : StepState.complete,
        isActive: _activeCurrentStep >= 1,

       /* _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrentStep >= 1,*/
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Services Selected',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
            ),),

            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 7,bottom: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                        
                        Expanded(child: SizedBox()),

                        Text('Pax',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),

                        Expanded(child: SizedBox()),

                        Text('Amount',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),

                        Expanded(child: SizedBox()),

                        Text('EZian',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Men hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            Text('Estimate 20 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w300,fontSize: 10,
                            ),),

                          ],
                        ),

                        SizedBox(width: 30,),
                        
                        Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),

                        Expanded(child: SizedBox()),

                        Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                        Expanded(child: SizedBox()),
                        Center(
                          child: Text('Anyone',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Men hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            Text('Estimate 20 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w300,fontSize: 10,
                            ),),

                          ],
                        ),

                        SizedBox(width: 30,),

                        Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),

                        Expanded(child: SizedBox()),

                        Text('RM 9',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                        Expanded(child: SizedBox()),
                        Center(
                          child: Text('Anyone',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 15,),

            Text('Booking Summary',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
            ),),

            SizedBox(height: 15,),

            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text('Subtotal',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Chosen Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Chosen Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Duration',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Booking Fees',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Penalty Fees',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                          ],
                        ),

                        Expanded(child: SizedBox()),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text('RM 35.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('08 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('1:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('1:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 1.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 5.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 35,top: 10,bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('Total Paid',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w700,fontSize: 15,color: Appcolors.grey1
                        ),),
                        Expanded(child: SizedBox()),
                        Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Text('Booking Summary',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
            ),),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: (){
                  setState(() {
                    jobtype = !jobtype;
                  });

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Credit/Debit Card',style: Textstyle2Light18.appbartextstyle.copyWith(
                        color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                    ),),
                    Expanded(child: SizedBox()),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Appcolors.greenlight),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.arrow_drop_down,color: Appcolors.greenlight,)),
                  ],
                ),
              ),
            ),

            jobtype == true

                ?
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Iocns/addicon1.png',scale: 4.5,),

                  Expanded(child: SizedBox()),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Add new Credit/Debit card.',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 12,fontWeight: FontWeight.w400
                      ),),

                      Row(
                        children: [
                          Text('Note:',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 10,fontWeight: FontWeight.w700
                          ),),
                          Text(' By adding credit/debit card you agree on EZi to save your card',style: Textstyle1Light18.appbartextstyle.copyWith(
                              fontSize: 10,fontWeight: FontWeight.w400
                          ),),
                        ],
                      ),
                      Text('information securely and display for future payments.',style: Textstyle1Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w400
                      ),),
                    ],
                  ),

                ],
              ),
            )
                :
            SizedBox(),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Online Banking',style: Textstyle2Light18.appbartextstyle.copyWith(
                      color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                  ),),
                  Expanded(child: SizedBox()),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.arrow_drop_up,color: Appcolors.greenlight,)),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Online Banking',style: Textstyle2Light18.appbartextstyle.copyWith(
                      color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                  ),),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                GestureDetector(

                  onTap: (){
                    Navigator.pop(context);
                  },

                  child: Container(
                    padding: EdgeInsets.only(bottom: 3,right: 15,left: 15),
                    decoration: BoxDecoration(
                        color: Appcolors.green1,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.greenlight)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.clear,size: 45,color: Colors.red,),

                        Text('Cancel',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 15,fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                ),

                Expanded(child: SizedBox()),

                GestureDetector(

                  onTap: (){
                    setState(() {
                      _activeCurrentStep += 1;
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                  },

                  child: Container(
                    width: 250,
                    padding: EdgeInsets.only(top: 15,bottom: 15),
                    decoration: BoxDecoration(
                        color: Appcolors.green1,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.greenlight)
                    ),
                    child: Center(
                      child: Text('Make Payment',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 30,fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ),
                ),
              ],
            ),

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 250,
                color: Colors.white,
              ),
            ),

            Center(
              child: Text('Payment Successful',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            SizedBox(height: 20,),

            Text('Your appointment have been successfully scheduled. You will receive a reminder 1 hour before your appointment starts. Thank you for using EZi!',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w400,fontSize: 15
            ),),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text('Partner Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Booking No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Transaction No  ',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Chosen Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Chosen Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Payment Method',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('EZi Class',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Booking Type',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Transaction Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Transaction Time',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                          ],
                        ),

                        Expanded(child: SizedBox()),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('160521001',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('001',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('08 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 1.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Online Banking',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('EZi Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Home Based',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('06 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('11:00 AM',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 35,top: 10,bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('Total Paid',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w700,fontSize: 15,color: Appcolors.grey1
                        ),),
                        Expanded(child: SizedBox()),
                        Text('RM 32.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),

            Center(
              child: Container(
                width: 280,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Done',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w600,fontSize: 30,
                  ),),
                ),
              ),
            ),

            SizedBox(height: 20,),

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
