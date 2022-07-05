import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class UpdateCard extends StatefulWidget {
  const UpdateCard({Key key}) : super(key: key);

  @override
  State<UpdateCard> createState() => _UpdateCardState();
}

class _UpdateCardState extends State<UpdateCard> {
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
                      width: width*0.2,
                    ),

                    Text('Update Card Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.02),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assest/Iocns/delete.png',scale: 5,),
                SizedBox(width: 20),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Card Holder Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
              ),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 13,
                  ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Card Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
              ),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text('Maybank',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 13,
                  ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Card Number',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
              ),),
            ),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 20,bottom: 20),
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Appcolors.greenlight,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('1234',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 13,
                  ),),
                ),

                Expanded(child: SizedBox()),

                Container(
                  margin: EdgeInsets.only(bottom: 20,top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Appcolors.greenlight,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('1234',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 13,
                  ),),
                ),

                Expanded(child: SizedBox()),

                Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Appcolors.greenlight,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('1234',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 13,
                  ),),
                ),

                Expanded(child: SizedBox()),

                Container(
                  margin: EdgeInsets.only(right: 20,top: 20,bottom: 20),
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Appcolors.greenlight,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('1234',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 13,
                  ),),
                ),

                Expanded(child: SizedBox()),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
                      ),),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(horizontal: 45,vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Appcolors.greenlight,width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('10/20',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 13,
                        ),),
                      ),
                    ],
                  ),
                  
                  Expanded(child: SizedBox()),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV No',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18,decoration: TextDecoration.underline
                      ),),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Appcolors.greenlight,width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('571',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 13,
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30,),

            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 80),
                decoration: BoxDecoration(
                  color:Appcolors.green1,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Update Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 18,
                ),),
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
