// ignore_for_file: file_names

import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';

class Appcolors{

  static const List<Color> appcolor = [];

  static const Color greenlight = Color(0xFF01AB6B);
  static const Color blue = Color(0xFF005ECC);
  static const Color blue1 = Color(0xFF89ABE3);
  static const Color green1 = Color(0xFFEFFCF6);
  static const Color green2 = Color(0xFFD6F7E8);
  static const Color red = Color(0xFFE24C4B);
  static const Color grey = Color(0xFF7C8B96);
  static const Color grey1 = Color(0xFF333333);
  static const Color background = Color(0xFFE5E5E5);
  static const Color orange = Color(0xFFF6800D);
}

class CompanyStocks {
  String name;
  String price;

  String image1;
  String image2;

  CompanyStocks({this.image1,this.image2,this.name,this.price});
}

class Inputdec1 {
  static InputDecoration inputDecoration = InputDecoration(

      focusColor: Colors.white,


    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(
        fontSize: 16,color: Colors.grey),
    /* prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Image.asset("assets/Image/Search Icon.png", width: 10, height: 10,color: Colors.grey,),
    ),*/

    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.redAccent)
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Appcolors.greenlight),
    ),

    filled: true,

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Appcolors.greenlight),
    ),

  );
}


class Inputdec3 {
  static InputDecoration inputDecoration = InputDecoration(

      // focusColor: Colors.white,


    labelStyle: Textstyle2Light18.appbartextstyle.copyWith(
        fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),
    /* prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Image.asset("assets/Image/Search Icon.png", width: 10, height: 10,color: Colors.grey,),
    ),*/

    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Colors.redAccent)
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Appcolors.greenlight),
    ),

    filled: true,

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Appcolors.greenlight),
    ),
    /*focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Appcolors.greenlight),
    ),
*/
  );
}

class Inputdec2 {
  static InputDecoration inputDecoration = InputDecoration(

    //   focusColor: AppColor.white,
    /*hintText: 'Email address',*/
    hintStyle: Textstyle2Light18.appbartextstyle.copyWith(
        fontSize: 20,color: Colors.grey),
    border: InputBorder.none,
    /*prefixIcon: Padding(
      padding: EdgeInsets.all(14.0),
      child: Image.asset("assets/Image/Search Icon.png", width: 10, height: 10,color: Colors.grey,),
    ),*/

   /* errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.redAccent)
    ),*/

    /*border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
// borderSide: BorderSide(color: AppColor.black3button, width: 2),
    ),*/

    // filled: true,

    /*enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(width: 2,),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(width: 2,),
    ),*/

  );
}

