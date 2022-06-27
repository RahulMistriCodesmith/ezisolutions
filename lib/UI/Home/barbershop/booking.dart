// ignore_for_file: prefer_const_constructors

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/barbershop/filter.dart';
import 'package:ezisolutions/UI/Home/barbershop/partnerprofilepage.dart';
import 'package:flutter/material.dart';
class BookingPage extends StatefulWidget {
  const BookingPage({Key key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {




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
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(width: width*0.27),

                    Text('Barber Shop',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 18,fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 30),
              child: Row(
                children: [
                  Container(
                    width: width*0.6,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextFormField(
                      decoration: Inputdec1.inputDecoration.copyWith(
                        hintText: 'Search for partners & services',
                      ),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  Container(
                    decoration: BoxDecoration(
                      color: Appcolors.green1,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.search,size: 45,color: Appcolors.greenlight,),
                  ),

                  Expanded(child: SizedBox()),

                  GestureDetector(

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage()));
                    },

                    child: Container(
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.filter_alt_outlined,size: 45,color: Appcolors.greenlight,),
                    ),
                  ),
                ],
              ),
            ),

            ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: 10),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerProfilePage()));
                    },
                    
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Appcolors.greenlight,width: 2)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.asset(
                              "assest/Image/shopimage.png",
                              scale: 4.5,
                            ),
                          ),
                          Expanded(
                              child: Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 4),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "EZi Barber",
                                          style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 18,fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(
                                          "(4.5K M)",
                                          style:Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 10,fontWeight: FontWeight.w300
                                          ),
                                        ),

                                        Expanded(child: SizedBox()),

                                        Container(
                                          width: width*0.04,
                                          height: width*0.04,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Appcolors.greenlight,
                                          ),
                                        ),

                                        Text(
                                          "Open",
                                          style:Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,fontWeight: FontWeight.w600
                                          ),
                                        ),

                                      ],
                                    ),

                                    Text(
                                      "Uptown Damansara",
                                      style:
                                      Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,fontWeight: FontWeight.w400
                                      ),
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                    SizedBox(height: 15),

                                    Text(
                                      "Service Category",
                                      style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 18,fontWeight: FontWeight.w600
                                      ),
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Shop & Home",
                                      style:
                                      Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 12,fontWeight: FontWeight.w400
                                      ),
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "5.0",
                                          style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        Image.asset('assest/Iocns/staricon.png',scale: 4,),


                                        Expanded(child: SizedBox()),

                                        Text(
                                          "RM10 - RM150",
                                          style:Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.justify,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                }),

          ],
        ),
      ),
    );
  }
}
