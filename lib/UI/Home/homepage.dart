import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/barbershop/booking.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [

                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: height*0.25,),

            Container(
              padding: EdgeInsets.only(top: 15,bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Text('Choose your preferred service',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600,
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                GestureDetector(

                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage()));
                                  },

                                  child: Container(
                                    padding: EdgeInsets.only(left: 10,right: 15,top: 2,bottom: 2),
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assest/Image/barbershop.png',scale: 4,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text('Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,
                                            ),),
                                            Text('Shop',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,
                                            ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 15,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/hairsaloon.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Hair',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Saloon',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 25,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/carwash.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Car',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Wash',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/messageimage.png',scale: 4,),
                                      Text('Message',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w600,
                                      ),),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 9,right: 9,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/clean.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Cleaning',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Service',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/plumbing.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Plumbing',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Service',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                          ],
                        ),

                        SizedBox(height: 15),

                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 15,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/aircondrepair.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Aircond',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Repair',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/electricalrepair.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Electrical',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Repair',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),

                            Expanded(child: SizedBox()),

                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 2,bottom: 2),
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assest/Image/moreservices.png',scale: 4,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('More',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                          Text('Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('(500 Partners available)',style: Textstyle1Light18.appbartextstyle.copyWith(
                                  fontSize: 10,fontWeight: FontWeight.w400,
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
                             border: Border.all(color: Appcolors.greenlight),
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

                         SizedBox(width: 20),

                         Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(color: Appcolors.greenlight),
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

                         SizedBox(width: 20),

                         Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(color: Appcolors.greenlight),
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
                              border: Border.all(color: Appcolors.greenlight),
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

                          SizedBox(width: 20),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight),
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

                          SizedBox(width: 20),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight),
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
                              border: Border.all(color: Appcolors.greenlight),
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

                          SizedBox(width: 20),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight),
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

                          SizedBox(width: 20),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Appcolors.greenlight),
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
}
