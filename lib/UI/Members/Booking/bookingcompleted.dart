import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Members/Booking/partnertip.dart';
import 'package:ezisolutions/UI/Members/Booking/rate&review.dart';

import 'package:flutter/material.dart';
class BookingCompleted extends StatefulWidget {
  const BookingCompleted({Key key}) : super(key: key);

  @override
  State<BookingCompleted> createState() => _BookingCompletedState();
}

class _BookingCompletedState extends State<BookingCompleted> {
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

                    SizedBox(width: width*0.25),

                    Text('Bookings Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w400
                    ),),

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

                          SizedBox(width: 40,),

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
                              Text('Shave for men',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w400,fontSize: 15,
                              ),),
                              Text('Estimate 15 min',style: Textstyle2Light18.appbartextstyle.copyWith(
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
              child: Text('Booking Summary',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            SizedBox(height: 10),

            Container(
margin: EdgeInsets.symmetric(horizontal: 3),
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
                            Text('Chosen Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Chosen Slot',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Booking Fees',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Discount',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('EZian Tipped',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                            Text('COMPLETED',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w600,fontSize: 15,color: Appcolors.greenlight
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
                            Text('1.00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                            Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('RM 5.00',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                        Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                              Text('No5. Jalan semarak off jalan nilai, 71000,',style: Textstyle2Light18.appbartextstyle.copyWith(
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

            Padding(
              padding: const EdgeInsets.only(left: 27,right: 27),
              child: Row(
                children: [
                  InkWell(

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RateReview()));
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Rate & Review',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 18,fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  InkWell(

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerTip()));
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Tip Partner',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 18,fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
