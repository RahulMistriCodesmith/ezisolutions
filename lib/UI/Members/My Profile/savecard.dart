import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Members/My%20Profile/updatecard.dart';
import 'package:flutter/material.dart';
class SaveCards extends StatefulWidget {
  const SaveCards({Key key}) : super(key: key);

  @override
  State<SaveCards> createState() => _SaveCardsState();
}

class _SaveCardsState extends State<SaveCards> {
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
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(
                      width: width*0.28,
                    ),

                    Text('Save Cards',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 70,vertical: 5),
              margin: EdgeInsets.only(top: 20,bottom: 20),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Add New Card',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              margin: EdgeInsets.only(bottom: 20,right: 3,left: 3),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Image/visacard.png',scale: 4,),

                  SizedBox(width: width*0.05),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hong Leong',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 18
                      ),),
                      Text('**** **** **** 7532',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text('09/21',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),

                  GestureDetector(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateCard()));
                      },

                      child: Image.asset('assest/Image/pen.png',scale: 4,)),

                  SizedBox(width: width*0.06),

                  Image.asset('assest/Iocns/delete.png',scale: 4,),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              margin: EdgeInsets.only(bottom: 20,right: 3,left: 3),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Image/mastercard.png',scale: 3.5,),

                  SizedBox(width: width*0.05),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maybank',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 18
                      ),),
                      Text('**** **** **** 7532',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text('09/21',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),

                  GestureDetector(

                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateAddress()));
                      },

                      child: Image.asset('assest/Image/pen.png',scale: 4,)),

                  SizedBox(width: width*0.06),

                  Image.asset('assest/Iocns/delete.png',scale: 4,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
