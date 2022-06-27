import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class FilterPage extends StatefulWidget {
  const FilterPage({Key key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  var selectedval = "All";
  var selectedval1 = "All";

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

                    SizedBox(width: width*0.35),

                    Text('Filter',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.green1,
                    ),
                    child:  Text('Reset',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w600
                    ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Price Range',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 18,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('RM15 - RM300',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 12,fontWeight: FontWeight.w600,
              ),),
            ),

            RangeSlider(
              values: _currentRangeValues,
              max: 100,
              activeColor: Appcolors.greenlight,
              inactiveColor: Appcolors.greenlight,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Rating',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 18,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [
                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval1 = "All";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 15,bottom: 15,left: 40,right: 40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval1 == "All" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Text('All',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 13,fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval1 = "1";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 19,bottom: 19,left: 40,right: 40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval1 == "1" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Image.asset('assest/Iocns/staricon.png',scale: 3,),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval1 = "2";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 19,bottom: 19,left: 33,right: 33),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval1 == "2" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Image.asset('assest/Image/2star.png',scale: 6,),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [
                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval1 = "3";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 18,bottom: 18,left: 26,right: 26),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval1 == "3" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Image.asset('assest/Image/3star.png',scale: 6,),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval1 = "4";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 9,bottom: 9,left: 28,right: 28),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval1 == "4" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Image.asset('assest/Image/4star.png',scale: 4.5,),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval1 = "5";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 13),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval1 == "5" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Image.asset('assest/Image/5star.png',scale: 5.5,),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Service Category',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 18,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
              ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: Row(
                children: [
                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval = "All";
                      });
                    },


                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval == "All" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Text('All',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 18,fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),

                  SizedBox(width: 10),

                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval = "home";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 12,right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval == "home" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Text('Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 18,fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),

                  SizedBox(width: 10),

                  InkWell(

                    onTap: (){
                      setState(() {
                        selectedval = "shop";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                        color: selectedval == "shop" ? Appcolors.green1 : Colors.white,
                      ),
                      child: Text('Shop',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 18,fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
              child: Container(
                width: width*2,
                height: height*0.055,
                decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolors.green1,
                ),
                child: Center(
                  child: Text('Apply',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 18,fontWeight: FontWeight.w600
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
