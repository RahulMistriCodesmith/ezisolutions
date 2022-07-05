import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class HelpCenter extends StatefulWidget {
  const HelpCenter({Key key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
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
                padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(
                      width: width*0.3,
                    ),

                    Text('Help Center',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 20),
              child: Text('Frequently Ask Questions',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

          GestureDetector(

            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
            },

            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('Your Account',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
                ],
              ),
            ),
          ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('Your Bookings',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('EZi Safety',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('Payment',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('Pricing',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Basic Tutorials',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
              ),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25,top: 15),
                    padding: EdgeInsets.only(left: 10,right: 50,top: 8,bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assest/Iocns/play.png',scale: 5,),

                        SizedBox(height: height*0.1,),

                        Text('How to make a booking?',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 12,
                        ),),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    padding: EdgeInsets.only(left: 10,right: 50,top: 8,bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assest/Iocns/play.png',scale: 5,),

                        SizedBox(height: height*0.1,),

                        Text('How to make a booking?',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 12,
                        ),),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15,right: 20),
                    padding: EdgeInsets.only(left: 10,right: 50,top: 8,bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assest/Iocns/play.png',scale: 5,),

                        SizedBox(height: height*0.1,),

                        Text('How to make a booking?',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 12,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20,bottom: 20),
              child: Text('Bugs/Future Suggestion',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
              ),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('Report a Bug',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 13),
              decoration: BoxDecoration(
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Appcolors.greenlight)
              ),
              child: Row(
                children: [
                  Text('Future Suggestion',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,size: 17,color: Appcolors.greenlight.withOpacity(0.4),)
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
