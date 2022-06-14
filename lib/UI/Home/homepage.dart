import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
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
                                Container(
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

                 Padding(
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

                           ],
                         ),
                       ),
                     ],
                   ),
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
