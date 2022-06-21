// ignore_for_file: void_checks

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class BookingDetails extends StatefulWidget {
  const BookingDetails({Key key}) : super(key: key);

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    Expanded(child: SizedBox()),

                    Text('Bookings Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w400
                    ),),

                    SizedBox(width: 30),
                    
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.greenlight)
                      ),
                      child: Column(
                        children: [
                          Image.asset('assest/Image/callimage.png',scale: 5,),
                          SizedBox(height: 3,),
                          Text('CALL',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 4,fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                    ),

                    SizedBox(width: 15),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Appcolors.green1,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight)
                      ),
                      child: Column(
                        children: [
                          Image.asset('assest/Image/locationimage.png',scale: 9,),
                          SizedBox(height: 3,),
                          Text('LOCATION',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 4,fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Services Booked',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 2,right: 2),
              child: Container(
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
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Services Booked',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            SizedBox(height: 10),

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
                            Text('Booking Status',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Booking No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Transaction No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Rescheduled Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Resheduled Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Initial Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Initial Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Booking Fees',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Initial Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Tip Amount',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Subtotal',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                            Text('Rescheduled - On Going',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,color: Appcolors.orange
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
                            Text('25 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('1.00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('18 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('1:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('25 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 2.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 0.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 30.00',style: Textstyle2Light18.appbartextstyle.copyWith(
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

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Booking Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 3,right: 3),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text('Member’s address',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 15,
                          ),),
                          Row(
                            children: [
                              Text('No5. Jalan semarak off jalan nilai,71000, ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w400,fontSize: 15,
                              ),),
                              Expanded(child: SizedBox()),
                            ],
                          ),
                          Text('Tampin, Negeri Sepuluh.',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),

                          SizedBox(height: 10),
                          Text('Booked On',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 15,
                          ),),
                          Text('10 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),

                          SizedBox(height: 10),
                          Text('Rescheduled On',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 15,
                          ),),
                          Text('05 May 2021, 12:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),

                          SizedBox(height: 10),
                          Text('Payment Method',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 15,
                          ),),
                          Text('FPX - Maybank',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),
                          Text('14 May 2021, 11:55 AM',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w300,fontSize: 10,
                          ),),

                          SizedBox(height: 10),
                          Text('EZi Class',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 15,
                          ),),
                          Text('EZi Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 15,
                          ),),

                          SizedBox(height: 10),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            GestureDetector(
              
              onTap: (){
                return showDialog(
                  context: context,
                  builder: (ctx) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 15),
                      child: Container(
                        width: width*0.2,
                        height: height*0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Booking Cancellation',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 20,
                            ),),

                            Expanded(child: SizedBox()),

                            Center(
                              child: Image.asset('assest/Image/fileimage.png',scale: 5,),
                            ),

                            Expanded(child: SizedBox()),

                            Text('Your booking is in less than an 6 hour. Cancelling now will result to penalty charges of RM5 in your next booking. Do you still want to cancel?',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),

                            Expanded(child: SizedBox()),

                            Row(
                              children: [
                                Text('Note: ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontWeight: FontWeight.w600,fontSize: 10,color: Appcolors.greenlight
                                ),),
                                Text('There is no way to undo this action once you have done it.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontWeight: FontWeight.w400,fontSize: 8,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(

                                  onTap: (){
                                    return showDialog(
                                      context: context,
                                      builder: (ctx) => Dialog(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 15),
                                          child: Container(
                                            width: width*0.2,
                                            height: height*0.45,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Booking Cancellation',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontWeight: FontWeight.w600,fontSize: 20,
                                                ),),

                                                Expanded(child: SizedBox()),

                                                Text('We are sorry that you have to cancel this booking. Let us know why.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontWeight: FontWeight.w400,fontSize: 15,
                                                ),),

                                                Expanded(child: SizedBox()),

                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Appcolors.greenlight),
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.white
                                                  ),
                                                  child: TextField(
                                                    maxLines: 6,
                                                    decoration: Inputdec1.inputDecoration.copyWith(
                                                      hintText: 'Remarks*',
                                                    ),
                                                  ),
                                                ),

                                                Expanded(child: SizedBox()),

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    GestureDetector(

                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },

                                                      child: Container(
                                                        width: width*0.2,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                          color: Appcolors.green1,
                                                          border: Border.all(color: Appcolors.greenlight),
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text('Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 20,fontWeight: FontWeight.w600,
                                                          ),),
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(width: 30,),

                                                    InkWell(

                                                      onTap: (){
                                                        return showDialog(
                                                          context: context,
                                                          builder: (ctx) => Dialog(
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 15),
                                                              child: Container(
                                                                padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 15),
                                                                width: width*0.2,
                                                                height: height*0.3,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Text('Booking Cancellation',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                      fontWeight: FontWeight.w600,fontSize: 20,
                                                                    ),),

                                                                    Expanded(child: SizedBox()),

                                                                    Text('Your booking have been successfully cancelled!',
                                                                      style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                      fontWeight: FontWeight.w400,fontSize: 15,
                                                                    ),),

                                                                    Expanded(child: SizedBox()),

                                                                    Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text('Note: ',
                                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                fontWeight: FontWeight.w600,fontSize: 12,
                                                                              ),),
                                                                            Text('You will be able to check this',
                                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                fontWeight: FontWeight.w400,fontSize: 8,
                                                                              ),),

                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text('booking details under ',
                                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                fontWeight: FontWeight.w400,fontSize: 8,
                                                                              ),),
                                                                            Text('Bookings - Cancelled.',
                                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                fontWeight: FontWeight.w400,fontSize: 8,color: Appcolors.greenlight
                                                                              ),),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),

                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },

                                                      child: Container(
                                                        width: width*0.2,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                          color: Appcolors.green1,
                                                          border: Border.all(color: Appcolors.greenlight),
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 20,fontWeight: FontWeight.w600,
                                                          ),),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },

                                  child: Container(
                                    width: width*0.2,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text('YES',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 20,fontWeight: FontWeight.w600,
                                      ),),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 30,),

                                InkWell(

                                  onTap: (){
                                    Navigator.pop(context);
                                  },

                                  child: Container(
                                    width: width*0.2,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text('NO',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 20,fontWeight: FontWeight.w600,
                                      ),),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },

              child: Center(
                child: Container(
                  width: width*0.85,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Appcolors.green1,
                    border: Border.all(color: Appcolors.greenlight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Cancel Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
