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

  bool selectedval = true;

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
              padding: const EdgeInsets.only(left: 30,right: 20,top: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15,bottom: 15,left: 42,right: 42),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Appcolors.green1 : Colors.white,
                    ),
                    child: Text('All',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600
                    ),),
                  ),

                  SizedBox(width: 20),

                  Container(
                    padding: EdgeInsets.only(top: 21,bottom: 21,left: 42,right: 42),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Colors.white : Appcolors.green1,
                    ),
                    child: Image.asset('assest/Iocns/staricon.png',scale: 2.5,),
                  ),

                  SizedBox(width: 20),

                  Container(
                    padding: EdgeInsets.only(top: 21,bottom: 21,left: 35,right: 35),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Colors.white : Appcolors.green1,
                    ),
                    child: Image.asset('assest/Image/2star.png',scale: 5,),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,right: 20,top: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20,bottom: 20,left: 28,right: 28),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Colors.white : Appcolors.green1,
                    ),
                    child: Image.asset('assest/Image/3star.png',scale: 5,),
                  ),

                  SizedBox(width: 20),

                  Container(
                    padding: EdgeInsets.only(top: 13,bottom: 13,left: 30,right: 30),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Colors.white : Appcolors.green1,
                    ),
                    child: Image.asset('assest/Image/4star.png',scale: 4,),
                  ),

                  SizedBox(width: 20),

                  Container(
                    padding: EdgeInsets.only(top: 15,bottom: 15,left: 28,right: 28),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Colors.white : Appcolors.green1,
                    ),
                    child: Image.asset('assest/Image/5star.png',scale: 5,),
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
                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Appcolors.green1 : Colors.white,
                    ),
                    child: Text('All',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600
                    ),),
                  ),

                  SizedBox(width: 10),

                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 12,right: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Appcolors.green1 : Colors.white,
                    ),
                    child: Text('Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600
                    ),),
                  ),

                  SizedBox(width: 10),

                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                      color: selectedval ? Appcolors.green1 : Colors.white,
                    ),
                    child: Text('Shop',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600
                    ),),
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
