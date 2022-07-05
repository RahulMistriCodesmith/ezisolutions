// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Members/QRCodes/amountpay.dart';
import 'package:ezisolutions/UI/Members/QRCodes/qrcodes1.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
class QRCodes extends StatefulWidget {
  const QRCodes({Key key}) : super(key: key);

  @override
  State<QRCodes> createState() => _QRCodesState();
}

class _QRCodesState extends State<QRCodes> {

  static var dropdownValue = 'John Martin';

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
                padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Center(
                      child: Text('QR Code',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 18
                      ),),
                    ),

                    SizedBox(width: width*0.17,),

                    GestureDetector(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => QRCodes1()));
                      },

                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Appcolors.green1,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Appcolors.greenlight)
                        ),
                        child: Image.asset('assest/Image/qrimage.png',scale: 5,),
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
                      child: Icon(Icons.share_outlined,size: 22,color: Appcolors.greenlight,),
                    ),
                  ],
                ),
              ),
            ),


            Stack(
              children: [

                Container(
                  width: width,
                  height: height*0.35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1.6),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(75, 60),
                      bottomLeft: Radius.elliptical(75, 60),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Appcolors.green1.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Column(
                        children: [
                          Text('Successfully Checked-in',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 20
                          ),),
                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 20
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 200),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        border: Border.all(color: Appcolors.greenlight,width: 2)
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                              color: Appcolors.green1,
                              border: Border.all(color: Appcolors.greenlight,)
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: width*0.2,
                                height: height*0.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),

                              ),
                              Expanded(child: SizedBox()),
                              Text('Thank You For Using EZi Check-in',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontWeight: FontWeight.w600,fontSize: 13
                              ),
                              overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Text('Your Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w600,fontSize: 15
                                  ),),
                                  SizedBox(height: 20,),
                                  Text('Time',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w600,fontSize: 15
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w600,fontSize: 15
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Location',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w600,fontSize: 15
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('EZian Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w600,fontSize: 15
                                  ),),
                                  SizedBox(height: 10,),
                                ],
                              ),

                              Expanded(child: SizedBox()),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Text('Muhamad Johan Bin',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                                  ),),
                                  Text('Mohamad Abu Bakar',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                                  ),),
                                  SizedBox(height: 18,),
                                  Text('01:00 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('25 July 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Damansara Uptown',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                                  ),),

                                  SizedBox(height: 15),

                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(width: 5.0,color: Appcolors.greenlight),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(color: Appcolors.greenlight),
                              ),
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(15),
                              filled: true,
                            ),
                            value: dropdownValue,
                            icon: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
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

                            items: <String>['John Martin']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),

                          ),
                        ),

                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),

              ],
            ),

            InkWell(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AmountPay()));
              },

              child: Padding(
                padding: const EdgeInsets.only(left: 35,right: 35,top: 20,bottom: 20),
                child: Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.greenlight,width: 2),
                    color: Appcolors.green1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Custom Quotation',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,bottom: 20),
              child: RichText(
                text: TextSpan(
                  text: 'Note: ',
                  style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontSize: 10,fontWeight: FontWeight.w600
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Check-in information will be visible under bookings',
                        style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black
                        ),
                    ),
                    TextSpan(
                      text: ' within 24 hours',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black
                      ),
                    ),
                    TextSpan(
                      text: ' from the ',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black
                      ),
                    ),
                    TextSpan(
                      text: 'check-in time.',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black
                      ),
                    ),
                    TextSpan(
                      text: ' If you use the ',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black
                      ),
                    ),
                    TextSpan(
                      text: '"',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black
                      ),
                    ),

                    TextSpan(
                      text: 'Custom Quotation',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w400,color: Appcolors.greenlight
                      ),
                    ),

                    TextSpan(
                      text: '"',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black
                      ),
                    ),
                    TextSpan(
                      text: ' and made a payment it will appear immediately.',
                      style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
