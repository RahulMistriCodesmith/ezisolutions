// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Booking/bookingcancelled.dart';
import 'package:ezisolutions/UI/Home/barbershop/booking.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> imageList = [
    'assest/Image/saloonimage.png',
    'assest/Image/saloonimage.png',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                       width: width*0.85,
                        child: Text('No5. Jalan semarak off jalan nilai Tampin, 71000',maxLines: 1,style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 13,fontWeight: FontWeight.w400,overflow: TextOverflow.ellipsis,
                        ),),
                      ),
                      Text('Current Location',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 12,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                      ),),
                    ],
                  ),

                  Expanded(child: SizedBox()),

                  GestureDetector(

                      onTap: (){
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          barrierColor: Appcolors.grey,
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                                builder: (context, setState) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[

                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Text('Good Morning,',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 20,fontWeight: FontWeight.w600,
                                        ),),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Text('Please select your location?',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w400,
                                        ),),
                                      ),

                                      SizedBox(height: 10),

                                      Container(
                                        padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Appcolors.greenlight)
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.location_on_outlined,size: 35,color: Appcolors.greenlight,),

                                            SizedBox(),

                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                Text('Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 18,fontWeight: FontWeight.w600,
                                                ),),

                                                Text('No5. Jalan semarak off jalan nilai',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w400,
                                                ),),

                                                Text('Tampin, 71000',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w400,
                                                ),),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 10),

                                      Container(
                                        padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Appcolors.greenlight)
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.location_on_outlined,size: 35,color: Appcolors.greenlight,),

                                            SizedBox(width: 10,),

                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                Text('Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 18,fontWeight: FontWeight.w600,
                                                ),),

                                                Text('No5. Jalan semarak off jalan nilai',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w400,
                                                ),),

                                                Text('Tampin, 71000',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w400,
                                                ),),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 20),

                                      Row(
                                        children: [

                                          SizedBox(),

                                          Image.asset('assest/Iocns/addicon1.png',scale: 3,),

                                          SizedBox(width: 5,),

                                          Text('Add new Address',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 18,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                          ),),

                                        ],
                                      ),

                                      SizedBox(height: 20),

                                      GestureDetector(

                                        onTap: (){
                                          Navigator.pop(context);
                                        },

                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 32,right: 32),
                                          child: Container(
                                            width: width*0.8,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Appcolors.green1,
                                              border: Border.all(color: Appcolors.greenlight),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text('Use This Location',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 20,fontWeight: FontWeight.w600,
                                              ),),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),

                                    ],
                                  );
                                }
                            );
                          },
                        );
                      },

                      child: Image.asset('assest/Image/pen.png',scale: 4)),
                ],
              ),
            ),


            CarouselSlider.builder(
              itemCount: imageList.length,
              options: CarouselOptions(
                enlargeCenterPage: false,
                height: 247,
                autoPlay: false,
                reverse: false,
                aspectRatio: 5.0,
                viewportFraction: 10,

              ),
              itemBuilder: (context, i, id){
                //for onTap to redirect to another screen
                return GestureDetector(
                  child: ClipRRect(

                    child: Image.asset(
                      imageList[i],
                      width: width,

                    ),
                  ),
                  onTap: (){

                    var url = imageList[i];
                    print(url.toString());
                  },
                );
              },
            ),

            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              // height: 260,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose your preferred service",
                    style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600
                    ),
                  ),

                  SizedBox(height: 10),

                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1 / 0.60,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      shrinkWrap: true,
                      itemCount: preferredServiceList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.zero,
                          child: Column(
                            // mainAxisSize:MainAxisSize.min,
                            children: [
                              InkWell(

                                onTap: (){
                                  if (preferredServiceList[index]["servicetext"] == "Barber Shop"){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage()));
                                  }
                                },

                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Appcolors.greenlight,
                                          width: 2)),
                                  height: 50,
                                  // width: 120,
                                  margin: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
                                  // padding: EdgeInsets.symmetric(horizontal: 1,vertical: 5),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                                    child: Row(
                                      children: [
                                        preferredServiceList[index]['image'],

                                        SizedBox(width: 8),

                                        Flexible(
                                            child: Text(
                                              preferredServiceList[index]
                                              ['servicetext'],
                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 14,fontWeight: FontWeight.w400
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(preferredServiceList[index]['text'],
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 8,fontWeight: FontWeight.w400
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2),
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Colors.white, width: 2)),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.only(top: 15,bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      children: [
                        Image.asset('assest/Iocns/partericon1.png',scale: 3),
                        Text('Saved Partners',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600,
                        ),),
                        
                        Expanded(child: SizedBox()),
                        
                        TextButton(
                          onPressed: (){},
                          child: Text('Show All',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                        ),),)
                      ],
                    ),
                  ),

                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                       children: [
                         Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(color: Appcolors.greenlight,width: 2),
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                       fontSize: 15,fontWeight: FontWeight.w600,
                                   ),),
                                   Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 10,fontWeight: FontWeight.w400,
                                   ),),
                                   Image.asset('assest/Iocns/staricon.png',scale: 4,),
                                 ],
                               ),
                               Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                                 fontSize: 10,fontWeight: FontWeight.w400,
                               ),),
                               Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                                 fontSize: 10,fontWeight: FontWeight.w400,
                               ),),
                               Row(
                                 children: [
                                   Container(
                                     width: 12,
                                     height: 12,
                                     decoration: BoxDecoration(
                                       color: Appcolors.greenlight,
                                       borderRadius: BorderRadius.circular(50),
                                     ),
                                   ),
                                   Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 10,fontWeight: FontWeight.w600,
                                   ),),
                                 ],
                               ),

                               SizedBox(height: 10),

                               Row(
                                 children: [
                                   Image.asset('assest/Image/saveimage.png',scale: 4),

                                   SizedBox(width: width*0.15,),

                                   Image.asset('assest/Image/infoimage.png',scale: 4,),
                                 ],
                               ),

                             ],
                           ),
                         ),

                         SizedBox(width: 15),

                         Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(color: Appcolors.greenlight,width: 2),
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 15,fontWeight: FontWeight.w600,
                                   ),),
                                   Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 10,fontWeight: FontWeight.w400,
                                   ),),
                                   Image.asset('assest/Iocns/staricon.png',scale: 4,),
                                 ],
                               ),
                               Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                                 fontSize: 10,fontWeight: FontWeight.w400,
                               ),),
                               Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                                 fontSize: 10,fontWeight: FontWeight.w400,
                               ),),
                               Row(
                                 children: [
                                   Container(
                                     width: 12,
                                     height: 12,
                                     decoration: BoxDecoration(
                                       color: Appcolors.greenlight,
                                       borderRadius: BorderRadius.circular(50),
                                     ),
                                   ),
                                   Text('Open',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 10,fontWeight: FontWeight.w600,
                                   ),),
                                 ],
                               ),

                               SizedBox(height: 10),

                               Row(
                                 children: [
                                   Image.asset('assest/Image/saveimage.png',scale: 4),

                                   SizedBox(width: width*0.15,),

                                   Image.asset('assest/Image/infoimage.png',scale: 4,),
                                 ],
                               ),

                             ],
                           ),
                         ),

                         SizedBox(width: 15),

                         Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(color: Appcolors.greenlight,width: 2),
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 15,fontWeight: FontWeight.w600,
                                   ),),
                                   Text('5.0',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 10,fontWeight: FontWeight.w400,
                                   ),),
                                   Image.asset('assest/Iocns/staricon.png',scale: 4,),
                                 ],
                               ),
                               Text('Uptown Damansara',style: Textstyle2Light18.appbartextstyle.copyWith(
                                 fontSize: 10,fontWeight: FontWeight.w400,
                               ),),
                               Text('RM10 - RM150',style: Textstyle2Light18.appbartextstyle.copyWith(
                                 fontSize: 10,fontWeight: FontWeight.w400,
                               ),),
                               Row(
                                 children: [
                                   Container(
                                     width: 12,
                                     height: 12,
                                     decoration: BoxDecoration(
                                       color: Appcolors.red,
                                       borderRadius: BorderRadius.circular(50),
                                     ),
                                   ),
                                   Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                     fontSize: 10,fontWeight: FontWeight.w600,
                                   ),),
                                 ],
                               ),

                               SizedBox(height: 10),

                               Row(
                                 children: [
                                   Image.asset('assest/Image/saveimage.png',scale: 4),

                                   SizedBox(width: width*0.15,),

                                   Image.asset('assest/Image/infoimage.png',scale: 4,),
                                 ],
                               ),

                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),

                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.only(top: 15,bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      children: [
                        Image.asset('assest/Image/eziansimage.png',scale: 3),
                        Text('Saved EZians',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600,
                        ),),

                        Expanded(child: SizedBox()),

                        TextButton(
                          onPressed: (){},
                          child: Text('Show All',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                          ),),)
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,
                                ),),

                                SizedBox(height: 10),

                                Image.asset('assest/Image/tipimage.png',scale: 4),
                                SizedBox(height: 5),

                                Row(
                                  children: [
                                    SizedBox(width: width*0.1,),
                                    Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 10,fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),

                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Image.asset('assest/Image/saveimage.png',scale: 4),

                                    SizedBox(width: 9),

                                    Container(
                                      padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(15),
                                          color: Appcolors.green1,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset('assest/Image/tipimage1.png',scale: 4,),
                                            Text('Tip EZian',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),
                                          ],
                                        )),
                                  ],
                                ),

                              ],
                            ),
                          ),

                          SizedBox(width: 15),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,
                                ),),

                                SizedBox(height: 10),

                                Image.asset('assest/Image/tipimage.png',scale: 4),
                                SizedBox(height: 5),

                                Row(
                                  children: [
                                    SizedBox(width: width*0.1,),
                                    Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 10,fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),

                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Image.asset('assest/Image/saveimage.png',scale: 4),

                                    SizedBox(width: 9),

                                    Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(15),
                                          color: Appcolors.green1,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset('assest/Image/tipimage1.png',scale: 4,),
                                            Text('Tip EZian',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),
                                          ],
                                        )),
                                  ],
                                ),

                              ],
                            ),
                          ),

                          SizedBox(width: 15),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,
                                ),),

                                SizedBox(height: 10),

                                Image.asset('assest/Image/tipimage.png',scale: 4),
                                SizedBox(height: 5),

                                Row(
                                  children: [
                                    SizedBox(width: width*0.1,),
                                    Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 10,fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),

                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Image.asset('assest/Image/saveimage.png',scale: 4),

                                    SizedBox(width: 9),

                                    Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Appcolors.greenlight),
                                          borderRadius: BorderRadius.circular(15),
                                          color: Appcolors.green1,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset('assest/Image/tipimage1.png',scale: 4,),
                                            Text('Tip EZian',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),
                                          ],
                                        )),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.only(top: 15,bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assest/Image/voiceimage.png',scale: 4),
                            Text('The People Voice Matters',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 20,fontWeight: FontWeight.w600,
                            ),),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 2,bottom: 20),
                          child: Text('At EZi we take every feedback into consideration so that we can enhance and improve our service for you! So don’t hold back, we are listening.',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 12,fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset('assest/Image/serviceimage.png',scale: 4,),
                                    SizedBox(height: 10,),
                                    Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                                
                                SizedBox(width: 10,),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Excelent service',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                    Text('The service is really good. I’ll definitely',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Text('recommend to all my friends and',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Text('family',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Row(

                                      children: [
                                        SizedBox(width: width*0.35),
                                        Text('10 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 10,fontWeight: FontWeight.w300,color: Appcolors.greenlight
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),

                          SizedBox(width: 15),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset('assest/Image/serviceimage.png',scale: 4,),
                                    SizedBox(height: 10,),
                                    Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),

                                SizedBox(width: 10,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Excelent service',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                    Text('The service is really good. I’ll definitely',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Text('recommend to all my friends and',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Text('family',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Row(

                                      children: [
                                        SizedBox(width: width*0.35),
                                        Text('10 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 10,fontWeight: FontWeight.w300,color: Appcolors.greenlight
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),

                          SizedBox(width: 15),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset('assest/Image/serviceimage.png',scale: 4,),
                                    SizedBox(height: 10,),
                                    Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),

                                SizedBox(width: 10,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Excelent service',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600,
                                    ),),
                                    Text('The service is really good. I’ll definitely',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Text('recommend to all my friends and',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Text('family',style: Textstyle1Light18.appbartextstyle.copyWith(
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),),
                                    Row(

                                      children: [
                                        SizedBox(width: width*0.35),
                                        Text('10 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 10,fontWeight: FontWeight.w300,color: Appcolors.greenlight
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
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  List preferredServiceList = [
    {
      'image':
      Image.asset("assest/Image/barbershop.png", height: 30, width: 35),
      'servicetext': 'Barber Shop',
      'text': '(500 Partners available)',

    },
    {
      'image':
      Image.asset("assest/Image/hairsaloon.png", height: 30, width: 35),
      'servicetext': 'Hair Saloon',
      'text': '(500 Partners available)',
    },
    {
      'image': Image.asset("assest/Image/carwash.png", height: 30, width: 35),
      'servicetext': 'Car Wash',
      'text': '(500 Partners available)',
    },
    {
      'image': Image.asset("assest/Image/messageimage.png", height: 30, width: 35),
      'servicetext': 'Massage',
      'text': '(500 Partners available)',
    },
    {
      'image': Image.asset("assest/Image/clean.png",
          height: 30, width: 35),
      'servicetext': 'Cleaning Service',
      'text': '(500 Partners available)',
    },
    {
      'image': Image.asset("assest/Image/plumbing.png",
          height: 30, width: 35),
      'servicetext': 'Plumbing Service',
      'text': '(500 Partners available)',
    },
    {
      'image':
      Image.asset("assest/Image/aircondrepair.png", height: 30, width: 35),
      'servicetext': 'Aircond Repair',
      'text': '(500 Partners available)',
    },
    {
      'image': Image.asset("assest/Image/electricalrepair.png",height: 30, width: 35),
      'servicetext': 'Electrical Repair',
      'text': '(500 Partners available)',
    },
    {
      'image':
      Image.asset("assest/Image/moreservices.png", height: 30, width: 35),
      'servicetext': 'More Services',
      'text': '(500 Partners available)',
    }
  ];



}
