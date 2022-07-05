import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Members/Booking/bookingcancelled.dart';
import 'package:ezisolutions/UI/Members/Booking/bookingcompleted.dart';
import 'package:ezisolutions/UI/Members/Booking/bookingdetails.dart';
import 'package:flutter/material.dart';
class Booking1 extends StatefulWidget {
  const Booking1({Key key}) : super(key: key);

  @override
  State<Booking1> createState() => _Booking1State();
}

class _Booking1State extends State<Booking1> {

  var selectedval = "ongoing";

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
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                child: Center(
                  child: Text('Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 18,fontWeight: FontWeight.w400
                  ),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedval = "ongoing";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.greenlight),
                        color: selectedval == "ongoing" ? Appcolors.green1 : Colors.white
                      ),
                      child: Center(
                        child: Text('On Going',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400, color: selectedval == "ongoing" ? Appcolors.greenlight : Colors.black
                        ),),
                      ),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedval = "completed";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight),
                          color: selectedval == "completed" ? Appcolors.green1 : Colors.white
                      ),
                      child: Center(
                        child: Text('Completed',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400, color: selectedval == "ongoing" ? Appcolors.greenlight : Colors.black
                        ),),
                      ),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedval = "cancelled";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight),
                          color: selectedval == "cancelled" ? Appcolors.green1 : Colors.white
                      ),
                      child: Center(
                        child: Text('Cancelled',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400, color: selectedval == "ongoing" ? Appcolors.greenlight : Colors.black
                        ),),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            selectedval == "ongoing"
            ?
                SizedBox(
                  height: height-200,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 5,right: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Bookings - On Going',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w600, decoration: TextDecoration.underline
                              ),),
                            ),

                            SizedBox(height: 20),

                            InkWell(

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BookingDetails()));
                              },

                              child: Container(
                                padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: const Offset(
                                        2.0,
                                        4.0,
                                      ),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                     //BoxShadow
                                  ],
                                  color: Colors.white,
                                  border: Border.all(color: Appcolors.greenlight),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 18,fontWeight: FontWeight.w600,
                                            ),),
                                            Text('ON GOING',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.orange
                                            ),),
                                          ],
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 18,fontWeight: FontWeight.w600,
                                        ),),
                                      ],
                                    ),

                                    SizedBox(height: height*0.02,),

                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,fontWeight: FontWeight.w400,
                                            ),),
                                            Text('08 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 10,fontWeight: FontWeight.w300,
                                            ),),
                                          ],
                                        ),
                                        Expanded(child: SizedBox()),
                                        Container(
                                          padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                          decoration: BoxDecoration(
                                            color: Appcolors.green1,
                                            border: Border.all(color: Appcolors.greenlight),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text('Reschedule',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 20),

                            Container(
                              padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: const Offset(
                                      2.0,
                                      4.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  //BoxShadow
                                ],
                                color: Colors.white,
                                border: Border.all(color: Appcolors.greenlight),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 18,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('ON GOING',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.orange
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,fontWeight: FontWeight.w400,
                                          ),),
                                          Text('08 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 10,fontWeight: FontWeight.w300,
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                        decoration: BoxDecoration(
                                          color: Appcolors.green1,
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text('Reschedule',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20),

                            Container(
                              padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: const Offset(
                                      2.0,
                                      4.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  //BoxShadow
                                ],
                                color: Colors.white,
                                border: Border.all(color: Appcolors.greenlight),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 18,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('ON GOING',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.orange
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,fontWeight: FontWeight.w400,
                                          ),),
                                          Text('08 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 10,fontWeight: FontWeight.w300,
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                        decoration: BoxDecoration(
                                          color: Appcolors.green1,
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text('Reschedule',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20),

                            Container(
                              padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: const Offset(
                                      2.0,
                                      4.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  //BoxShadow
                                ],
                                color: Colors.white,
                                border: Border.all(color: Appcolors.greenlight),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 18,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('ON GOING',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.orange
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,fontWeight: FontWeight.w400,
                                          ),),
                                          Text('08 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 10,fontWeight: FontWeight.w300,
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                        decoration: BoxDecoration(
                                          color: Appcolors.green1,
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text('Reschedule',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20),

                            Container(
                              padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: const Offset(
                                      2.0,
                                      4.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  //BoxShadow
                                ],
                                color: Colors.white,
                                border: Border.all(color: Appcolors.greenlight),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 18,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('ON GOING',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.orange
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                    ],
                                  ),

                                  SizedBox(height: height*0.02,),

                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 12,fontWeight: FontWeight.w400,
                                          ),),
                                          Text('08 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 10,fontWeight: FontWeight.w300,
                                          ),),
                                        ],
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                        decoration: BoxDecoration(
                                          color: Appcolors.green1,
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text('Reschedule',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                :
                SizedBox(),

            selectedval == "completed"
                ?
            SizedBox(
              height: height-200,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 5,right: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Bookings - Completed',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 20,fontWeight: FontWeight.w600, decoration: TextDecoration.underline
                          ),),
                        ),

                        SizedBox(height: 20),

                        InkWell(

                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BookingCompleted()));
                          },

                          child: Container(
                            padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Appcolors.greenlight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 18,fontWeight: FontWeight.w600,
                                        ),),
                                        Text('COMPLETED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                                        ),),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 18,fontWeight: FontWeight.w600,
                                    ),),
                                  ],
                                ),

                                SizedBox(height: height*0.02,),

                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,fontWeight: FontWeight.w400,
                                        ),),
                                        Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 10,fontWeight: FontWeight.w300,
                                        ),),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                      decoration: BoxDecoration(
                                        color: Appcolors.green1,
                                        border: Border.all(color: Appcolors.greenlight),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w600,
                                      ),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('COMPLETED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('COMPLETED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('COMPLETED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('COMPLETED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            )
                :
            SizedBox(),

            selectedval == "cancelled"
                ?
            SizedBox(
              height: height-200,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 5,right: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Bookings - Cancelled',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 20,fontWeight: FontWeight.w600, decoration: TextDecoration.underline
                          ),),
                        ),

                        SizedBox(height: 20),

                        InkWell(

                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BookingCancelled()));
                          },

                          child: Container(
                            padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                            decoration: BoxDecoration(

                              color: Colors.white,
                              border: Border.all(color: Appcolors.greenlight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 18,fontWeight: FontWeight.w600,
                                        ),),
                                        Text('CANCELLED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.red
                                        ),),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 18,fontWeight: FontWeight.w600,
                                    ),),
                                  ],
                                ),

                                SizedBox(height: height*0.02,),

                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,fontWeight: FontWeight.w400,
                                        ),),
                                        Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 10,fontWeight: FontWeight.w300,
                                        ),),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                      decoration: BoxDecoration(
                                        color: Appcolors.green1,
                                        border: Border.all(color: Appcolors.greenlight),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w600,
                                      ),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('CANCELLED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.red
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('CANCELLED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.red
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('CANCELLED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.red
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Text('CANCELLED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w600,color: Appcolors.red
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 18,fontWeight: FontWeight.w600,
                                  ),),
                                ],
                              ),

                              SizedBox(height: height*0.02,),

                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('Chosen Date & Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 12,fontWeight: FontWeight.w400,
                                      ),),
                                      Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300,
                                      ),),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.only(top: 5,bottom: 5,right: 8,left: 8),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text('Rebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            )
                :
            SizedBox(),

          ],
        ),
      ),
    );
  }
}
