import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class CustomPackagePage extends StatefulWidget {
  const CustomPackagePage({Key key}) : super(key: key);

  @override
  State<CustomPackagePage> createState() => _CustomPackagePageState();
}

class _CustomPackagePageState extends State<CustomPackagePage> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;
  bool isChecked9 = false;
  bool isChecked10 = false;
  bool isChecked11 = false;
  bool isChecked12 = false;
  bool isChecked13 = false;
  bool isChecked14 = false;
  bool isChecked15 = false;
  bool isChecked16 = false;
  bool isChecked17 = false;
  bool isChecked18 = false;
  bool isChecked19 = false;
  bool isChecked20 = false;
  bool isChecked21 = false;
  bool isChecked22 = false;
  bool isChecked23 = false;
  bool isChecked24 = false;
  bool isChecked25 = false;
  bool isChecked26 = false;
  bool isChecked27 = false;
  bool isChecked28 = false;
  bool isChecked29 = false;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Appcolors.greenlight;
    }

    return Scaffold(
      // backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(

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
                          width: width*0.25,
                        ),

                        Text('Custom Packages',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w400,fontSize: 18
                        ),),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Type of booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      Text('Shop cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked1,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked1 = value;
                          });
                        },
                      ),
                      Text('Home cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked2,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked2 = value;
                          });
                        },
                      ),
                      Text('Not required',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked3,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked3 = value;
                          });
                        },
                      ),
                      Text('Mens short hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked4,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked4 = value;
                          });
                        },
                      ),
                      Text('Mens long hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 3',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked5,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked5 = value;
                          });
                        },
                      ),
                      Text('Kids hair cut (7 - 12 Years old)',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        maxLines: 1,
                      ),

                      Expanded(child: SizedBox()),

                      Text('RM 12',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked6,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked6 = value;
                          });
                        },
                      ),
                      Text('Todler hair cut (Below 7 Years old)',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        maxLines: 1,
                      ),

                      Expanded(child: SizedBox()),

                      Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Beard shave/trim',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked7,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked7 = value;
                          });
                        },
                      ),
                      Text('Not required',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked8,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked8 = value;
                          });
                        },
                      ),
                      Text('Clean shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked9,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked9 = value;
                          });
                        },
                      ),
                      Text('Neat trim',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 3',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked10,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked10 = value;
                          });
                        },
                      ),
                      Text('Custom Shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Hair tattoo',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked11,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked11 = value;
                          });
                        },
                      ),
                      Text('Not required',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked12,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked12 = value;
                          });
                        },
                      ),
                      Text('Small hair tattoo',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked13,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked13 = value;
                          });
                        },
                      ),
                      Text('Medium hair tattoo',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 51',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked14,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked14 = value;
                          });
                        },
                      ),
                      Text('Whole head hair tattoo',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Hair colour',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked15,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked15 = value;
                          });
                        },
                      ),
                      Text('No colour',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked16,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked16 = value;
                          });
                        },
                      ),
                      Text('Black or white',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked17,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked17 = value;
                          });
                        },
                      ),
                      Text('Brown',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 3',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked18,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked18 = value;
                          });
                        },
                      ),
                      Text('Red',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked19,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked19 = value;
                          });
                        },
                      ),
                      Text('Blue',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 23',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Skin facial',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked20,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked20 = value;
                          });
                        },
                      ),
                      Text('Not required',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked21,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked21 = value;
                          });
                        },
                      ),
                      Text('Anti polutant mask',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked22,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked22 = value;
                          });
                        },
                      ),
                      Text('Eyebrows Trading',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 3',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked23,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked23 = value;
                          });
                        },
                      ),
                      Text('Double action facial',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked24,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked24 = value;
                          });
                        },
                      ),
                      Text('Face and neck detox',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 20',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight,decoration: TextDecoration.underline
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked25,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked25 = value;
                          });
                        },
                      ),
                      Text('No massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 0',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked26,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked26 = value;
                          });
                        },
                      ),
                      Text('10 min head massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 5',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked27,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked27 = value;
                          });
                        },
                      ),
                      Text('20 min head massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked28,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked28 = value;
                          });
                        },
                      ),
                      Text('10 min neck massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked29,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked29 = value;
                          });
                        },
                      ),
                      Text('20 min neck massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),

                      Expanded(child: SizedBox()),

                      Text('RM 20',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 13,
                      ),),
                    ],
                  ),
                ),


              ],
            ),

            ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 740),
            child: Container(
              padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
                color: Appcolors.green1,
              ),
              child: Row(
                children: [
                  Text('Cart (2)',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w700,fontSize: 20
                  ),),
                  Expanded(child: SizedBox()),
                  Text('RM 55',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w700,fontSize: 20
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
