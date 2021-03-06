import 'package:date_time_picker/date_time_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class Alerts extends StatefulWidget {
  const Alerts({Key key}) : super(key: key);

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {

  static var dropdownValue = 'Personal Alerts';
  static var dropdownValue2 = 'General Alerts';
  bool jobtype = false;

   final TextEditingController dob = TextEditingController();
  // final format = DateFormat("dd-MM-yyyy");


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Appcolors.background,
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
                padding: const EdgeInsets.only(left: 20,top: 8,bottom: 8,right: 20),
                child: Center(
                  child: Text('Alert',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 18
                  ),),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ExpansionTile(
                childrenPadding: EdgeInsets.all(3),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined,size: 25,color: Appcolors.greenlight,),
                // iconColor: Appcolors.greenlight,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Alert Filter',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 20
                        ),),

                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text('Reset filter',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 10,color: Appcolors.greenlight,decoration: TextDecoration.underline
                          ),),
                        ),
                      ],
                    ),

                  ],
                ),
                // subtitle: Text('Trailing expansion arrow icon'),
                children: <Widget>[
                  ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                width: width*0.42,
                                // decoration: BoxDecoration(
                                //   color: Colors.white,
                                //   border: Border.all(color: Appcolors.greenlight,width: 2),
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(width: 2.0,color: Appcolors.greenlight),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(width: 2.0,color: Appcolors.greenlight),
                                    ),
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(10),
                                    filled: true,
                                  ),
                                  value: dropdownValue,
                                  icon: Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,),
                                  elevation: 16,
                                  style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black
                                  ),
                                  onChanged: (String newValue) {
                                    dropdownValue = newValue;
                                  },

                                  items: <String>['Personal Alerts']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                ),
                              ),

                              Container(
                                width: width*0.42,
                                // decoration: BoxDecoration(
                                //   color: Colors.white,
                                //   border: Border.all(color: Appcolors.greenlight,width: 2),
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(width: 2.0,color: Appcolors.greenlight),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(width: 2.0,color: Appcolors.greenlight),
                                    ),
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(10),
                                    filled: true,
                                  ),
                                  value: dropdownValue2,
                                  icon: Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,),
                                  elevation: 16,
                                  style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 13,color: Colors.black
                                  ),
                                  onChanged: (String newValue) {
                                    dropdownValue2 = newValue;
                                  },

                                  items: <String>['General Alerts']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10,),

                          Row(
                            children: [

                              Container(
                                padding: EdgeInsets.only(left: 10),
                                height: height*0.065,
                                width: width*0.42,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Appcolors.greenlight,width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Theme(

                                  data: ThemeData(
                                      inputDecorationTheme: InputDecorationTheme(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(10)
                                      )
                                  ),

                                  child: DateTimePicker(

                                    initialValue: '',
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                    dateLabelText: 'Start Date',
                                    style: TextStyle(fontSize: 12),

                                    icon: Icon(Icons.calendar_month_outlined,color: Appcolors.greenlight,size: 25,),
                                    onChanged: (val) => print(val),
                                    validator: (val) {
                                      print(val);
                                      return null;
                                    },
                                    onSaved: (val) => print(val),
                                  ),
                                ),
                              ),

                              Expanded(child: SizedBox()),

                              Container(
                                padding: EdgeInsets.only(left: 10),
                                height: height*0.065,
                                width: width*0.42,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Appcolors.greenlight,width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Theme(

                                  data: ThemeData(
                                      inputDecorationTheme: InputDecorationTheme(
                                        border: InputBorder.none,
                                      )
                                  ),

                                  child: DateTimePicker(

                                    initialValue: '',
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                    dateLabelText: 'Start Date',
                                    style: TextStyle(fontSize: 12),


                                    icon: Icon(Icons.calendar_month_outlined,color: Appcolors.greenlight,size: 25,),
                                    onChanged: (val) => print(val),
                                    validator: (val) {
                                      print(val);
                                      return null;
                                    },
                                    onSaved: (val) => print(val),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10,),

                        ],
                      ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Service Confirmed!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),

                      Expanded(child: SizedBox()),

                      Text('25 May 2021 12:56 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 10,color: Appcolors.greenlight
                      ),),


                    ],
                  ),
                  SizedBox(height: 10,),

                  Text('Your booking at EZi Barber was successful. 1 hour before the booking we will remind you.',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Service Cancelled!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),

                      Expanded(child: SizedBox()),

                      Text('25 May 2021 12:56 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 10,color: Appcolors.greenlight
                      ),),


                    ],
                  ),
                  SizedBox(height: 10,),

                  Text('Your have successful cancelled your booking at EZi Barber.',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Booking Reminder!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),

                      Expanded(child: SizedBox()),

                      Text('25 May 2021 12:56 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 10,color: Appcolors.greenlight
                      ),),


                    ],
                  ),
                  SizedBox(height: 10,),

                  Text('Your booking at EZi Barber is in an hour time. We recommend you be ready for it.',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Service Cancelled!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),

                      Expanded(child: SizedBox()),

                      Text('25 May 2021 12:56 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 10,color: Appcolors.greenlight
                      ),),


                    ],
                  ),
                  SizedBox(height: 10,),

                  Text('Your have successful completed your booking at EZi Barber. Don???t forget to share your experiance with us!',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Announcement!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),

                      Expanded(child: SizedBox()),

                      Text('25 May 2021 12:56 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 10,color: Appcolors.greenlight
                      ),),


                    ],
                  ),
                  SizedBox(height: 10,),

                  Text('Just to inform that we have launch a new category in our service line up. Don???t forget to check it out!',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15
                  ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
