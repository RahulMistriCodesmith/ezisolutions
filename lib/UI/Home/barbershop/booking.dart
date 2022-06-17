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
                    width: width*0.55,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: Inputdec3.inputDecoration.copyWith(
                        hintText: 'Search for partners & services',

                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Container(
                    decoration: BoxDecoration(
                      color: Appcolors.green1,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.search,size: 60,color: Appcolors.greenlight,),
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
                      child: Icon(Icons.filter_alt_outlined,size: 60,color: Appcolors.greenlight,),
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerProfilePage()));
              },

              child: Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        2.0,
                        4.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset('assest/Image/shopimage.png',scale: 5,),

                    SizedBox(width: 20,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 18
                            ),),
                            Text('(4.5KM)',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w300,fontSize: 10
                            ),),

                            SizedBox(
                              width: width*0.17,
                            ),

                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Appcolors.greenlight,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),

                            Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w600,fontSize: 12
                            ),),
                          ],
                        ),
                        Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 12
                        ),),

                        SizedBox(height: 15,),

                        Text('Service Category',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 12
                        ),),

                        Text('Shop & Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 12
                        ),),

                        Row(
                          children: [
                            Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w400,fontSize: 12
                            ),),

                            Image.asset('assest/Iocns/staricon.png',scale: 3,),

                            SizedBox(width: width*0.25),

                            Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontWeight: FontWeight.w600,fontSize: 15
                            ),),
                          ],
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      2.0,
                      4.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset('assest/Image/shopimage.png',scale: 5,),

                  SizedBox(width: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 18
                          ),),
                          Text('(4.5KM)',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w300,fontSize: 10
                          ),),

                          SizedBox(
                            width: width*0.17,
                          ),

                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Appcolors.greenlight,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),

                          Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 12
                          ),),
                        ],
                      ),
                      Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      SizedBox(height: 15,),

                      Text('Service Category',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 12
                      ),),

                      Text('Shop & Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      Row(
                        children: [
                          Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 12
                          ),),

                          Image.asset('assest/Iocns/staricon.png',scale: 3,),

                          SizedBox(width: width*0.25),

                          Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15
                          ),),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      2.0,
                      4.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset('assest/Image/shopimage.png',scale: 5,),

                  SizedBox(width: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 18
                          ),),
                          Text('(4.5KM)',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w300,fontSize: 10
                          ),),

                          SizedBox(
                            width: width*0.17,
                          ),

                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Appcolors.greenlight,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),

                          Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 12
                          ),),
                        ],
                      ),
                      Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      SizedBox(height: 15,),

                      Text('Service Category',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 12
                      ),),

                      Text('Shop & Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      Row(
                        children: [
                          Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 12
                          ),),

                          Image.asset('assest/Iocns/staricon.png',scale: 3,),

                          SizedBox(width: width*0.25),

                          Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15
                          ),),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      2.0,
                      4.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset('assest/Image/shopimage.png',scale: 5,),

                  SizedBox(width: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 18
                          ),),
                          Text('(4.5KM)',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w300,fontSize: 10
                          ),),

                          SizedBox(
                            width: width*0.17,
                          ),

                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Appcolors.greenlight,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),

                          Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 12
                          ),),
                        ],
                      ),
                      Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      SizedBox(height: 15,),

                      Text('Service Category',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 12
                      ),),

                      Text('Shop & Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      Row(
                        children: [
                          Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 12
                          ),),

                          Image.asset('assest/Iocns/staricon.png',scale: 3,),

                          SizedBox(width: width*0.25),

                          Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15
                          ),),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      2.0,
                      4.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset('assest/Image/shopimage.png',scale: 5,),

                  SizedBox(width: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 18
                          ),),
                          Text('(4.5KM)',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w300,fontSize: 10
                          ),),

                          SizedBox(
                            width: width*0.17,
                          ),

                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Appcolors.greenlight,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),

                          Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 12
                          ),),
                        ],
                      ),
                      Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      SizedBox(height: 15,),

                      Text('Service Category',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 12
                      ),),

                      Text('Shop & Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 12
                      ),),

                      Row(
                        children: [
                          Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 12
                          ),),

                          Image.asset('assest/Iocns/staricon.png',scale: 3,),

                          SizedBox(width: width*0.25),

                          Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15
                          ),),
                        ],
                      ),

                    ],
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
