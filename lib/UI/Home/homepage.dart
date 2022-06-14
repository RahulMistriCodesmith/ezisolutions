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
                      Container(
                        padding: EdgeInsets.only(left: 5,right: 10,top: 2,bottom: 2),
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

                      Expanded(child: SizedBox()),

                      Container(
                        padding: EdgeInsets.only(left: 5,right: 10,top: 2,bottom: 2),
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

                      Expanded(child: SizedBox()),

                      Container(
                        padding: EdgeInsets.only(left: 5,right: 10,top: 2,bottom: 2),
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
