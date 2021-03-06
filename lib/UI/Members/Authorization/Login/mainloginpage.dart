// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_element, prefer_typing_uninitialized_variables, avoid_print, missing_required_param, sized_box_for_whitespace, avoid_unnecessary_containers, curly_braces_in_flow_control_structures, missing_return, unused_field, prefer_const_literals_to_create_immutables, void_checks, non_constant_identifier_names

import 'dart:async';
import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Members/Authorization/Login/languagepage.dart';
import 'package:ezisolutions/UI/Members/Home/location/mylocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:slider_button/slider_button.dart';
class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key key, this.title, this.viewInsets, }) : super(key: key);

  final String title;
  final EdgeInsets viewInsets;

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {

  _printLatestValue() {
    print("Second text field: ${_pinCodeController.text}");
  }

  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final _textController1 = TextEditingController();
  final _pinCodeController = TextEditingController();
  final _pinCodeController1 = TextEditingController();
  final _errorController = StreamController<ErrorAnimationType>();
  final _errorController1 = StreamController<ErrorAnimationType>();
  final _validPinCode = '1234';

  bool rememberMe = false;

  String _validateText(String text) {
    if (text != _validPinCode) {
      // _textController.clear(); // This works just fine.
      return 'Mismatch';
    }
    return null;
  }

  String _validatePinCode(String pinCode) {
    if (pinCode.isNotEmpty && pinCode.length == 4) {
      if (pinCode != _validPinCode) {
        _pinCodeController.clear();
        _pinCodeController1.clear();//! This is not working and causes error.
        _errorController.add(ErrorAnimationType.shake);
        return 'Mismatch';
      }
    }
    return null;
  }

  // TextEditingController phoneController = TextEditingController();
  // String phoneNumber = "";

  void _onCountryChange(CountryCode countryCode) {
    // phoneNumber =  countryCode.toString();
    print("New Country selected: $countryCode");
  }

  void check(){
    // print("Full Text: "+ this.phoneNumber + phoneController.text);
  }

  final GlobalKey<FormState> _forMKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  /// this [StreamController] will take input of which function should be called

  bool hasError = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  var errorController;

  bool status = true;

  bool isSwitched = false;
  bool _isObscure = false;
  bool _isObscure1 = false;
  bool _isObscure2 = false;
  bool isFinished = false;
  var selectedval = 'slide1';

  // File imageFile;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController contact1 = TextEditingController();
  TextEditingController contact2 = TextEditingController();
  File imageFile;
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  var width;
  var height;

  verificationdilog(){
    return showDialog(

      context: context,

      builder: (ctx) =>

          Dialog(

            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

              height: height * 0.4,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Verification Fail!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600
                      ),),

                      // Expanded(child: SizedBox()),

                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Appcolors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.clear,color: Colors.white,size: 12,),
                      ),

                      // SizedBox(width: width*0.01,),

                      InkWell(

                        onTap: (){
                          Navigator.pop(context);
                        },

                        child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 12,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                        ),),
                      ),
                    ],
                  ),

                  // SizedBox(height: height*0.04,),

                  Image.asset('assest/Image/failicon.png',scale: 5,),

                  // SizedBox(height: height*0.03,),

                  Text(
                    'Your OTP  Code have expired/Invalid!',
                    style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),),

                  Expanded(child: SizedBox()),

                  GestureDetector(

                    onTap: (){
                      Navigator.pop(context);
                    },

                    child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        border: Border.all(
                            color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(
                            15),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text('Try again',
                            style: Textstyle2Light18
                                .appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
    );
  }

  verificationdilog1(){
    return showDialog(
      context: context,
      builder: (ctx) =>

          Dialog(

            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

              height: height * 0.4,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Login Fail',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600
                      ),),

                      Expanded(child: SizedBox()),

                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Appcolors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.clear,color: Colors.white,size: 12,),
                      ),

                      SizedBox(width: width*0.01,),

                      InkWell(

                        onTap: (){
                          Navigator.pop(context);
                        },

                        child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 12,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                        ),),
                      ),
                    ],
                  ),

                  // SizedBox(height: height*0.04,),

                  Image.asset('assest/Image/verification1.png',scale: 5,),

                  // SizedBox(height: height*0.03,),

                  Text(
                    'The mobile number or password is incorrect.',
                    style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),),

                  Expanded(child: SizedBox()),

                  GestureDetector(

                    onTap: (){
                      Navigator.pop(context);
                    },

                    child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: Appcolors.blue1.withOpacity(0.3),
                        border: Border.all(
                            color: Appcolors.blue),
                        borderRadius: BorderRadius.circular(
                            15),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text('Try again',
                            style: Textstyle2Light18
                                .appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
    );
  }

  PartnerRegistration(){

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (context, setState) {
              return SingleChildScrollView(

                child: Container(
                  padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(color: Appcolors.blue,width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(

                          onTap: (){
                            Navigator.pop(context);
                          },

                          child: Row(
                            children: [
                              Text('Let???s Be Partners',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 18,fontWeight: FontWeight.w600
                              ),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                              ),

                              Expanded(child: SizedBox()),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                decoration: BoxDecoration(
                                  color: Appcolors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.clear,color: Colors.white,size: 13,),
                              ),

                              SizedBox(width: width*0.01,),

                              Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.blue
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(

                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Partners \n Details",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 30,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue.withOpacity(0.2), width: 2),
                                  ),
                                  child: Center(
                                    child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 30,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue.withOpacity(0.2), width: 2),
                                  ),
                                  child: Center(
                                    child: Text('3',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Business \n Details",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 30,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue.withOpacity(0.2), width: 2),
                                  ),
                                  child: Center(
                                    child: Text('4',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Payment \n Details",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 10,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: height*0.02,),

                        Row(
                          children: [
                            Text("Join us today and start earning. It is easy with",
                                style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 15,fontWeight: FontWeight.w400
                                ),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              maxLines: 2,
                            ),
                            Text(" EZi!",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600
                              ),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              maxLines: 2,
                            ),
                          ],
                        ),

                        SizedBox(height: height*0.025,),

                        Row(
                          children: [
                            Text("Requirements",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12,fontWeight: FontWeight.w600
                              ),
                            ),
                            Text("*",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12,fontWeight: FontWeight.w600,color: Appcolors.red
                              ),
                            ),
                          ],
                        ),

                        Text("* At least 1 year experience in your area of expertise.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),
                        Text("* Valid business license is required.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),
                        Text("* Malaysians or permanent resident only.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),
                        Text("* Age above 18 years old only.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),

                        Text("* Have a fully working smart phone.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),

                        SizedBox(height: height*0.03,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Business name*'
                          ),
                        ),

                        SizedBox(height: height*0.04,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Business owners full name* '
                          ),
                        ),

                        SizedBox(height: height*0.04,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Business owners Identification* '
                          ),
                        ),

                        SizedBox(height: height*0.04,),

                        Row(
                          children: [
                            Container(

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Appcolors.blue),
                                  color: Colors.white
                              ),
                              child: CountryCodePicker(
                                onChanged: _onCountryChange,
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'IN',
                                favorite: ['+91'],
                                textStyle: Textstyle2Light18.appbartextstyle.copyWith(
                                    color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600
                                ),
                                // optional. Shows only country name and flag

                                showFlag: false,
                                // optional. Shows only country name and flag when popup is closed.
                                showOnlyCountryWhenClosed: false,
                                showFlagDialog: true,
                                // optional. aligns the flag and the Text left
                                alignLeft: false,
                              ),
                            ),

                            SizedBox(width: 5),

                            Expanded(
                              child: Container(
                                // height: height*0.067,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),


                                ),
                                child: TextFormField(
                                  controller: contact,
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "";

                                    }
                                  },
                                  // cursorHeight: 18,

                                  decoration: Inputdec4.inputDecoration.copyWith(
                                    contentPadding: EdgeInsets.all(15),
                                    labelText: 'Contact no',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: height*0.04,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Business owners Identification* '
                          ),
                        ),

                        SizedBox(height: height*0.04,),

                        GestureDetector(
                          onTap: (){
                            setState(() {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(
                                      builder: (context, setState) {
                                        return Container(
                                          padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                          height: height*0.9,
                                          width: width,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                              border: Border.all(color: Appcolors.blue,width: 2)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                            child: SingleChildScrollView(
                                              child: Column(

                                                children: <Widget>[

                                                  GestureDetector(

                                                    onTap: (){
                                                      Navigator.pop(context);
                                                    },

                                                    child: Row(
                                                      children: [
                                                        Text('Time To Verify!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 18,fontWeight: FontWeight.w600
                                                        ),
                                                          textAlign: TextAlign.justify,
                                                          overflow: TextOverflow.ellipsis,
                                                        ),

                                                        Expanded(child: SizedBox()),

                                                        Container(
                                                          padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                                          decoration: BoxDecoration(
                                                            color: Appcolors.red,
                                                            borderRadius: BorderRadius.circular(50),
                                                          ),
                                                          child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                        ),
                                                        SizedBox(width: width*0.01,),
                                                        Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 15,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.blue
                                                        ),),
                                                      ],
                                                    ),
                                                  ),

                                                  SizedBox(height: 15),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Column(

                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.blue1,
                                                              borderRadius: BorderRadius.circular(60),
                                                              border: Border.all(color: Appcolors.blue, width: 2),
                                                            ),
                                                            child: Center(
                                                              child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  color: Appcolors.blue
                                                              ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ),
                                                          ),
                                                          Text("Partners \n Details",
                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  fontSize: 11,fontWeight: FontWeight.w300
                                                              ),textAlign: TextAlign.center),
                                                        ],
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 30),
                                                        child: Container(
                                                          width: 40,
                                                          height: 1,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.blue1,
                                                              borderRadius: BorderRadius.circular(60),
                                                              border: Border.all(color: Appcolors.blue, width: 2),
                                                            ),
                                                            child: Center(
                                                              child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  color: Appcolors.blue
                                                              ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ),
                                                          ),
                                                          Text("Mobile No \n Verification",
                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  fontSize: 11,fontWeight: FontWeight.w300
                                                              ),textAlign: TextAlign.center),
                                                        ],
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 30),
                                                        child: Container(
                                                          width: 40,
                                                          height: 1,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.blue1.withOpacity(0.2),
                                                              borderRadius: BorderRadius.circular(60),
                                                              border: Border.all(color: Appcolors.blue.withOpacity(0.2), width: 2),
                                                            ),
                                                            child: Center(
                                                              child: Text('3',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  color: Appcolors.blue
                                                              ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ),
                                                          ),
                                                          Text("Mobile No \n Verification",
                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  fontSize: 11,fontWeight: FontWeight.w300
                                                              ),textAlign: TextAlign.center),
                                                        ],
                                                      ),

                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 30),
                                                        child: Container(
                                                          width: 40,
                                                          height: 1,
                                                          color: Colors.black,
                                                        ),
                                                      ),

                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.blue1.withOpacity(0.2),
                                                              borderRadius: BorderRadius.circular(60),
                                                              border: Border.all(color: Appcolors.blue.withOpacity(0.2), width: 2),
                                                            ),
                                                            child: Center(
                                                              child: Text('4',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  color: Appcolors.blue
                                                              ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ),
                                                          ),
                                                          Text("Mobile No \n Verification",
                                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  fontSize: 11,fontWeight: FontWeight.w300
                                                              ),textAlign: TextAlign.center),
                                                        ],
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(height: 20),

                                                  Image.asset('assest/Image/password2.png',scale: 4,),

                                                  SizedBox(height: 20,),

                                                  RichText(
                                                    text: const TextSpan(
                                                      text: 'Please enter the 4 digit code sent to: +60 123334444 ',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'OpenSans-VariableFont',
                                                          fontSize: 13),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                            text: 'Resend code (15 seconds)',
                                                            style: TextStyle(
                                                                color: Appcolors.blue,
                                                                fontFamily: 'OpenSans-VariableFont',
                                                                fontSize: 13,decoration: TextDecoration.underline)
                                                        ),

                                                      ],
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),

                                                  SizedBox(height: 10,),

                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 10, vertical: 10),
                                                    child: PinCodeTextField(
                                                      onChanged: (value) {},

                                                      autoDisposeControllers: false,
                                                      controller: _pinCodeController1,
                                                      appContext: context,
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      length: 4,
                                                      keyboardType: TextInputType.phone,
                                                      autoDismissKeyboard: false,
                                                      textStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                        fontFamily: 'OpenSans-SemiBold',
                                                      ),
                                                      // backgroundColor: Colors.white,
                                                      autoFocus: true,
                                                      enablePinAutofill: true,
                                                      pinTheme: PinTheme(
                                                        shape: PinCodeFieldShape.box,
                                                        borderRadius: BorderRadius.circular(10),
                                                        fieldHeight: 45,
                                                        fieldWidth: 45,
                                                        disabledColor: Appcolors.blue,
                                                        activeColor: Appcolors.blue,
                                                        inactiveColor: Appcolors.blue,

                                                        selectedColor: Appcolors.blue,
                                                        selectedFillColor: Appcolors.blue,
                                                        // borderRadius: BorderRadius.circular(5),
                                                        activeFillColor: Appcolors.blue,
                                                      ),
                                                      animationType: AnimationType.fade,
                                                      animationDuration: Duration(milliseconds: 300),
                                                      // errorAnimationController: errorController, // Pass it here
                                                    ),
                                                  ),

                                                  SizedBox(height: 7),

                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                                    child: Row(
                                                      children: [
                                                        InkWell(

                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          },

                                                          child: Container(
                                                            width: width*0.2,
                                                            padding: EdgeInsets.symmetric(vertical: 6),
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.blue1.withOpacity(0.3),
                                                              border: Border.all(color: Appcolors.blue),
                                                              borderRadius: BorderRadius.circular(20),
                                                            ),

                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Icon(Icons.arrow_back),
                                                                Text('Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  fontSize: 15,fontWeight: FontWeight.w400,
                                                                ),),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Expanded(
                                                          child: Container(
                                                            height: height*0.071,
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.blue1.withOpacity(0.3),
                                                              border: Border.all(color: Appcolors.blue),
                                                              borderRadius: BorderRadius.circular(20),
                                                            ),
                                                            child: RaisedButton(
                                                              elevation: 0,
                                                              color: Appcolors.blue1.withOpacity(0.3),
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(20),
                                                              ),
                                                              child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                fontSize: 25,fontWeight: FontWeight.w600,
                                                              ),),
                                                              onPressed: (){

                                                                if (_pinCodeController1.text == "1234"){
                                                                  AlmostTherePartner();
                                                                }
                                                                else {
                                                                  return verificationdilog1();
                                                                }


                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                  );
                                },
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 7),
                            decoration: BoxDecoration(
                              color: Appcolors.blue1.withOpacity(0.3),
                              border: Border.all(color: Appcolors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('Next',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 25,fontWeight: FontWeight.w600,
                              ),),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              );
            }
        );
      },
    );
  }

  getyouanaccount(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (context, setState) {
              _getFromGallery() async {
                PickedFile pickedFile = await ImagePicker().getImage(

                  source: ImageSource.gallery,
                  maxWidth: 1800,
                  maxHeight: 1800,

                );
                if (pickedFile != null) {
                  setState(() {

                    imageFile = File(pickedFile.path);

                    print('image value $imageFile');

                  });
                }
              }
              return SingleChildScrollView(

                child: Container(
                  padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(color: Appcolors.greenlight,width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        GestureDetector(

                          onTap: (){
                            Navigator.pop(context);
                          },

                          child: Row(
                            children: [
                              Text('Let???s Get You An Account!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 18,fontWeight: FontWeight.w600
                              ),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                              ),

                              Expanded(child: SizedBox()),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                decoration: BoxDecoration(
                                  color: Appcolors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.clear,color: Colors.white,size: 13,),
                              ),

                              SizedBox(width: width*0.01,),

                              Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(

                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Appcolors.green1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.greenlight, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.greenlight
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Users \n Details",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 40,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),


                            Column(

                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  decoration:
                                  BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.greenlight, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('2', style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Colors.black
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No\n Verification",style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 11,fontWeight: FontWeight.w300
                                ),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),

                        ClipRRect(
                          borderRadius:
                          BorderRadius.circular(100),
                          child: Container(

                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child:

                            imageFile == null

                                ? Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            )

                                : Image.file(

                              imageFile,

                              fit: BoxFit.cover,

                            ),

                          ),
                        ),

                        InkWell(
                            onTap: (){
                              _getFromGallery();
                            },
                            child: Text('Tap to insert image')),

                        SizedBox(height: 15),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: TextFormField(
                              decoration: Inputdec1.inputDecoration.copyWith(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.white,
                                hintText: 'Your Name (As per NRIC)*',

                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: TextFormField(

                              decoration: Inputdec1.inputDecoration.copyWith(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.white,
                                hintText: 'Email Address*',

                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Container(
                                height: 47,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Appcolors.greenlight),
                                    color: Colors.white
                                ),
                                child: CountryCodePicker(

                                  onChanged: _onCountryChange,
                                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                  initialSelection: 'IN',
                                  favorite: ['+91'],
                                  textStyle: Textstyle2Light18.appbartextstyle.copyWith(
                                      color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w600
                                  ),
                                  // optional. Shows only country name and flag

                                  showFlag: false,
                                  // optional. Shows only country name and flag when popup is closed.
                                  showOnlyCountryWhenClosed: false,
                                  showFlagDialog: true,
                                  // optional. aligns the flag and the Text left
                                  alignLeft: false,
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white

                                  ),
                                  child: TextFormField(

                                    controller: contact2,

                                    keyboardType: TextInputType.phone,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "";

                                      }
                                    },
                                    // cursorHeight: 18,

                                    decoration: Inputdec1.inputDecoration.copyWith(
                                      contentPadding: EdgeInsets.all(10),
                                      fillColor: Colors.white,
                                      errorStyle: TextStyle(height: 0),
                                      hintText: 'Contact no',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  if(email.text == "10-8822016" && password.text == "Test"){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));

                                  }
                                }
                                return null;
                              },
                              obscureText: _isObscure1,
                              controller: password1,
                              decoration: Inputdec1.inputDecoration.copyWith(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.white,
                                hintText: 'Password*',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure1 = !_isObscure1;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  if(email.text == "10-8822016" && password.text == "Test"){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));

                                  }
                                }
                                return null;
                              },
                              obscureText: _isObscure2,
                              controller: password2,
                              decoration: Inputdec1.inputDecoration.copyWith(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.white,
                                hintText: 'Re-type password*',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure2 ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure2 = !_isObscure2;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                        builder: (context, setState) {
                                          return Container(
                                            padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                            height: height*0.9,
                                            width: width,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                ),
                                                border: Border.all(color: Appcolors.greenlight,width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                              child: SingleChildScrollView(
                                                child: Column(

                                                  children: <Widget>[

                                                    GestureDetector(

                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },

                                                      child: Row(
                                                        children: [
                                                          Text('Time To Verify!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                              fontSize: 18,fontWeight: FontWeight.w600
                                                          ),
                                                            textAlign: TextAlign.justify,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),

                                                          Expanded(child: SizedBox()),

                                                          Container(
                                                            padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                                            decoration: BoxDecoration(
                                                              color: Appcolors.red,
                                                              borderRadius: BorderRadius.circular(50),
                                                            ),
                                                            child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                          ),
                                                          SizedBox(width: width*0.01,),
                                                          Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                              fontSize: 15,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                          ),),
                                                        ],
                                                      ),
                                                    ),

                                                    SizedBox(height: 15),

                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Column(

                                                          children: [
                                                            Container(
                                                              height: 55,
                                                              width: 55,
                                                              decoration: BoxDecoration(
                                                                color: Appcolors.green1,
                                                                borderRadius: BorderRadius.circular(60),
                                                                border: Border.all(color: Appcolors.greenlight, width: 2),
                                                              ),
                                                              child: Center(
                                                                child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                    color: Appcolors.greenlight
                                                                ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ),
                                                            ),
                                                            Text("Users \n Details",
                                                                style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                    fontSize: 11,fontWeight: FontWeight.w300
                                                                ),textAlign: TextAlign.center),
                                                          ],
                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 30),
                                                          child: Container(
                                                            width: 40,
                                                            height: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),


                                                        Column(

                                                          children: [
                                                            Container(
                                                              height: 55,
                                                              width: 55,
                                                              decoration:
                                                              BoxDecoration(
                                                                color: Appcolors.green1,
                                                                borderRadius: BorderRadius.circular(60),
                                                                border: Border.all(color: Appcolors.greenlight, width: 2),
                                                              ),
                                                              child: Center(
                                                                child: Text('2', style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                    color: Appcolors.greenlight
                                                                ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ),
                                                            ),
                                                            Text("Mobile No\n Verification",style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                fontSize: 11,fontWeight: FontWeight.w300
                                                            ),
                                                                textAlign: TextAlign.center),
                                                          ],
                                                        ),
                                                      ],
                                                    ),

                                                    SizedBox(height: 20),

                                                    Image.asset('assest/Image/passwordimage.png',scale: 4,),

                                                    SizedBox(height: 20,),

                                                    RichText(
                                                      text: const TextSpan(
                                                        text: 'Enter the 4 digits code that you was sent to you at +60 10 - 8822016. ',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: 'OpenSans-VariableFont',
                                                            fontSize: 13),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: ' Resend code',
                                                              style: TextStyle(
                                                                  color: Appcolors.greenlight,
                                                                  fontFamily: 'OpenSans-VariableFont',
                                                                  fontSize: 13,decoration: TextDecoration.underline)
                                                          ),

                                                        ],
                                                      ),
                                                      textAlign: TextAlign.justify,
                                                    ),

                                                    SizedBox(height: 10,),

                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(
                                                          horizontal: 10, vertical: 10),
                                                      child: PinCodeTextField(
                                                        onChanged: (value) {},

                                                        autoDisposeControllers: false,
                                                        controller: _pinCodeController1,
                                                        appContext: context,
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        length: 4,
                                                        keyboardType: TextInputType.phone,
                                                        autoDismissKeyboard: false,
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'OpenSans-SemiBold',
                                                        ),
                                                        // backgroundColor: Colors.white,
                                                        autoFocus: true,
                                                        enablePinAutofill: true,
                                                        pinTheme: PinTheme(
                                                          shape: PinCodeFieldShape.box,
                                                          borderRadius: BorderRadius.circular(10),
                                                          fieldHeight: 45,
                                                          fieldWidth: 45,
                                                          disabledColor: Appcolors.blue,
                                                          activeColor: Appcolors.greenlight,
                                                          inactiveColor: Appcolors.greenlight,

                                                          selectedColor: Appcolors.greenlight,
                                                          selectedFillColor: Appcolors.greenlight,
                                                          // borderRadius: BorderRadius.circular(5),
                                                          activeFillColor: Appcolors.greenlight,
                                                        ),
                                                        animationType: AnimationType.fade,
                                                        animationDuration: Duration(milliseconds: 300),
                                                        // errorAnimationController: errorController, // Pass it here
                                                      ),
                                                    ),

                                                    SizedBox(height: 7),

                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                                      child: Row(
                                                        children: [
                                                          InkWell(

                                                            onTap: (){
                                                              Navigator.pop(context);
                                                            },

                                                            child: Container(
                                                              width: width*0.2,
                                                              padding: EdgeInsets.symmetric(vertical: 6),
                                                              decoration: BoxDecoration(
                                                                color: Appcolors.green1,
                                                                border: Border.all(color: Appcolors.greenlight),
                                                                borderRadius: BorderRadius.circular(20),
                                                              ),

                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [
                                                                  Icon(Icons.arrow_back),
                                                                  Text('Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                    fontSize: 15,fontWeight: FontWeight.w400,
                                                                  ),),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          Expanded(
                                                            child: Container(
                                                              height: height*0.071,
                                                              decoration: BoxDecoration(
                                                                color: Appcolors.green1,
                                                                border: Border.all(color: Appcolors.greenlight),
                                                                borderRadius: BorderRadius.circular(20),
                                                              ),
                                                              child: RaisedButton(
                                                                elevation: 0,
                                                                color: Appcolors.green1,
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                ),
                                                                child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                  fontSize: 25,fontWeight: FontWeight.w600,
                                                                ),),
                                                                onPressed: (){

                                                                  if (_pinCodeController1.text == "1234"){
                                                                    showModalBottomSheet(
                                                                      shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.only(
                                                                          topLeft: Radius.circular(20),
                                                                          topRight: Radius.circular(20),
                                                                        ),
                                                                      ),
                                                                      context: context,
                                                                      isScrollControlled: true,
                                                                      builder: (BuildContext context) {
                                                                        return StatefulBuilder(
                                                                            builder: (context, setState) {
                                                                              return Container(
                                                                                padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                                                                decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.only(
                                                                                      topLeft: Radius.circular(20),
                                                                                      topRight: Radius.circular(20),
                                                                                    ),
                                                                                    border: Border.all(color: Appcolors.greenlight,width: 2)
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: <Widget>[
                                                                                      Row(
                                                                                        children: [
                                                                                          Text('Account Creation Successful!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                              fontSize: 18,fontWeight: FontWeight.w600
                                                                                          ),
                                                                                            textAlign: TextAlign.justify,
                                                                                            overflow: TextOverflow.ellipsis,
                                                                                          ),

                                                                                          Expanded(child: SizedBox()),

                                                                                          Container(
                                                                                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                                                                            decoration: BoxDecoration(
                                                                                              color: Appcolors.red,
                                                                                              borderRadius: BorderRadius.circular(50),
                                                                                            ),
                                                                                            child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                                                          ),
                                                                                          InkWell(

                                                                                            onTap: (){
                                                                                              Navigator.pop(context);
                                                                                            },

                                                                                            child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                                            ),),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(height: 100),

                                                                                      Text('Your account have been created successfully. You are now one step away from exploring various services around your area!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                          fontSize: 15,fontWeight: FontWeight.w400
                                                                                      ),
                                                                                        textAlign: TextAlign.justify,
                                                                                      ),



                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                                                                                        child: InkWell(

                                                                                          onTap: (){
                                                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MainLoginPage()));
                                                                                          },

                                                                                          child: Container(
                                                                                            width: width*0.8,
                                                                                            height: height*0.07,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Appcolors.green1,
                                                                                              border: Border.all(color: Appcolors.greenlight),
                                                                                              borderRadius: BorderRadius.circular(20),
                                                                                            ),
                                                                                            child: Center(
                                                                                              child: Text('Login Now',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                fontSize: 25,fontWeight: FontWeight.w600,
                                                                                              ),),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                  else {
                                                                    return verificationdilog();
                                                                  }


                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                    );
                                  },
                                );
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Appcolors.green1,
                                border: Border.all(color: Appcolors.greenlight),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text('Next',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 25,fontWeight: FontWeight.w600,
                                ),),
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              );
            }
        );
      },
    );
  }

  AlmostTherePartner(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        Color getColor(Set<MaterialState> states) {
          const Set<MaterialState> interactiveStates = <MaterialState>{
            MaterialState.pressed,
            MaterialState.hovered,
            MaterialState.focused,
          };
          if (states.any(interactiveStates.contains)) {
            return Colors.blue;
          }
          return Colors.red;
        }

        return StatefulBuilder(

            builder: (context, setState) {
              var dropdownValue = 'Business type*';
              return SingleChildScrollView(

                child: Container(
                  padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(color: Appcolors.blue,width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        GestureDetector(

                          onTap: (){
                            Navigator.pop(context);
                          },

                          child: Row(
                            children: [
                              Text('Almost There Partner',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 18,fontWeight: FontWeight.w600
                              ),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                              ),

                              Expanded(child: SizedBox()),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                decoration: BoxDecoration(
                                  color: Appcolors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.clear,color: Colors.white,size: 13,),
                              ),

                              SizedBox(width: width*0.01,),

                              Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.blue
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(

                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Partners \n Details",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 35,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 35,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('3',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 35,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue.withOpacity(0.2), width: 2),
                                  ),
                                  child: Center(
                                    child: Text('4',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: height*0.02,),

                        Row(
                          children: [
                            Text("Why join us? ",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w400
                              ),
                            ),
                            Text("Because we can help in making your business",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12,fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        Text(" known to people! Anyways, that???s what partners do right. ???",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),


                        SizedBox(height: height*0.025,),

                        Row(
                          children: [
                            Text("Requirements",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12,fontWeight: FontWeight.w600
                              ),
                            ),
                            Text("*",
                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12,fontWeight: FontWeight.w600,color: Appcolors.red
                              ),
                            ),
                          ],
                        ),

                        Text("* You set your own schedule.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),
                        Text("* Increase your revenue or make this as an extra income.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),
                        Text("* Don???t own a physical shop? No worries we got you covered.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),
                        Text("* Weekly payout for all online transaction made with EZi.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),

                        Text("* We help all verified business regardless of categories.",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                        ),

                        SizedBox(height: height*0.03,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Business address*',
                            suffixIcon: ImageIcon(AssetImage('assest/Image/addressicon.png',),color: Appcolors.blue),

                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Address unit no*',
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Business registration no*',
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 5.0,color: Appcolors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Appcolors.blue),
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                          ),
                          value: dropdownValue,
                          icon: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Appcolors.blue)
                              ),
                              child: const Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.blue,)),
                          elevation: 16,
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black
                          ),
                          onChanged: (String newValue) {
                            dropdownValue = newValue;
                          },

                          items: <String>['Business type*']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),

                        ),

                        SizedBox(height: height*0.02,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Upload IC - Front*',
                            suffixIcon: Icon(Icons.attach_file_outlined,color: Appcolors.blue)
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                              contentPadding: EdgeInsets.all(12),
                              hintText: 'Upload IC - Back*',
                              suffixIcon: Icon(Icons.attach_file_outlined,color: Appcolors.blue)
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                              contentPadding: EdgeInsets.all(12),
                              hintText: 'Business registration certificate*',
                              suffixIcon: Icon(Icons.attach_file_outlined,color: Appcolors.blue)
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        GestureDetector(

                          onTap: (){
                            ThatsAboutItPartner();
                          },

                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Appcolors.blue1.withOpacity(0.3),
                              border: Border.all(color: Appcolors.blue),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 25,fontWeight: FontWeight.w600,
                              ),),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              );
            }
        );
      },
    );
  }

  ThatsAboutItPartner(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        Color getColor(Set<MaterialState> states) {
          const Set<MaterialState> interactiveStates = <MaterialState>{
            MaterialState.pressed,
            MaterialState.hovered,
            MaterialState.focused,
          };
          if (states.any(interactiveStates.contains)) {
            return Appcolors.blue;
          }
          return Appcolors.blue;
        }

        return StatefulBuilder(

            builder: (context, setState) {
              var dropdownValue = 'Business type*';

              return SingleChildScrollView(

                child: Container(
                  padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(color: Appcolors.blue,width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        GestureDetector(

                          onTap: (){
                            Navigator.pop(context);
                          },

                          child: Row(
                            children: [
                              Text('Almost There Partner',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 18,fontWeight: FontWeight.w600
                              ),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                              ),

                              Expanded(child: SizedBox()),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                decoration: BoxDecoration(
                                  color: Appcolors.red,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.clear,color: Colors.white,size: 13,),
                              ),

                              SizedBox(width: width*0.01,),

                              Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 15,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.blue
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(

                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Partners \n Details",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 40,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 40,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('3',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 40,
                                height: 1,
                                color: Colors.black,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Appcolors.blue1,
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(color: Appcolors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text('4',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        color: Appcolors.blue
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text("Mobile No \n Verification",
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 11,fontWeight: FontWeight.w300
                                    ),textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: height*0.02,),

                        Text("Dont worry,",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w600
                          ),
                        ),
                        Text("We will only use this information to verify your business. All the information you submitted to us will be kept and managed properly. When you choose to delete your account all of this information will be deleted as well",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                        ),

                        SizedBox(height: height*0.025,),

                        Text("Let???s complete your profile!",
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 18,fontWeight: FontWeight.w600
                          ),
                        ),


                        SizedBox(height: height*0.03,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Bank account holder name*',
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        TextFormField(
                          decoration: Inputdec4.inputDecoration.copyWith(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Bank account no*',
                          ),
                        ),

                        SizedBox(height: height*0.02,),

                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 5.0,color: Appcolors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Appcolors.blue),
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                          ),
                          value: dropdownValue,
                          icon: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Appcolors.blue)
                              ),
                              child: const Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.blue,)),
                          elevation: 16,
                          style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black
                          ),
                          onChanged: (String newValue) {
                            dropdownValue = newValue;
                          },

                          items: <String>['Business type*', 'BOI', 'SBI']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),

                        ),

                        SizedBox(height: height*0.02,),

                        Text('Do you own a shop?*',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 12,fontWeight: FontWeight.w400,
                        ),),

                        SizedBox(height: height*0.003,),

                        Row(
                          children: [
                          Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                            Text('Yes',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400,
                            ),),

                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked1,
                              onChanged: (bool value) {
                                setState(() {
                                  isChecked1 = value;
                                });
                              },
                            ),
                            Text('No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),

                        Text('Is this shop one of your branches?*',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 12,fontWeight: FontWeight.w400,
                        ),),

                        SizedBox(height: height*0.003,),

                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked2,
                              onChanged: (bool value) {
                                setState(() {
                                  isChecked2 = value;
                                });
                              },
                            ),
                            Text('Yes',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400,
                            ),),

                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked3,
                              onChanged: (bool value) {
                                setState(() {
                                  isChecked3 = value;
                                });
                              },
                            ),
                            Text('No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),

                        Text('Do you provide home-based service?*',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 12,fontWeight: FontWeight.w400,
                        ),),

                        SizedBox(height: height*0.003,),

                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked4,
                              onChanged: (bool value) {
                                setState(() {
                                  isChecked4 = value;
                                });
                              },
                            ),
                            Text('Yes',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400,
                            ),),

                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked5,
                              onChanged: (bool value) {
                                setState(() {
                                  isChecked5 = value;
                                });
                              },
                            ),
                            Text('No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 12,fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),

                        SizedBox(height: height*0.03,),

                        GestureDetector(

                          onTap: (){

                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                      return Container(
                                        padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            border: Border.all(color: Appcolors.blue,width: 2)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Text('Submission Successful!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 18,fontWeight: FontWeight.w600
                                                  ),
                                                    textAlign: TextAlign.justify,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),

                                                  Expanded(child: SizedBox()),

                                                  Container(
                                                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                                    decoration: BoxDecoration(
                                                      color: Appcolors.red,
                                                      borderRadius: BorderRadius.circular(50),
                                                    ),
                                                    child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                  ),
                                                  InkWell(

                                                    onTap: (){
                                                      Navigator.pop(context);
                                                    },

                                                    child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.blue
                                                    ),),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 100),

                                              Text('Your submission have been submitted successful! We will be reviewing the information that you have submitted to us. You should hear from us in within 36 hours.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w400
                                              ),
                                                textAlign: TextAlign.justify,
                                              ),



                                              Padding(
                                                padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                                                child: InkWell(

                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainLoginPage()));
                                                  },

                                                  child: Container(
                                                    width: width*0.8,
                                                    height: height*0.07,
                                                    decoration: BoxDecoration(
                                                      color: Appcolors.blue1.withOpacity(0.3),
                                                      border: Border.all(color: Appcolors.blue),
                                                      borderRadius: BorderRadius.circular(20),
                                                    ),
                                                    child: Center(
                                                      child: Text('Done',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 25,fontWeight: FontWeight.w600,
                                                      ),),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                );
                              },
                            );

                          },

                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Appcolors.blue1.withOpacity(0.3),
                              border: Border.all(color: Appcolors.blue),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 25,fontWeight: FontWeight.w600,
                              ),),
                            ),
                          ),
                        ),

                        SizedBox(height: height*0.03,),

                        RichText(
                          text: TextSpan(
                            text: 'By submitting you are acknowledging that you have read and agree to EZi ',
                            style: DefaultTextStyle.of(context).style,
                            children: const <TextSpan>[
                              TextSpan(text: 'Terms & Condition',
                                  style: TextStyle(color: Appcolors.blue,decoration: TextDecoration.underline,)),
                              TextSpan(text: ' End'),
                              TextSpan(text: ' Privacy Policy.',
                                  style: TextStyle(color: Appcolors.blue,decoration: TextDecoration.underline)),
                            ],
                          ),
                        ),

                        SizedBox(height: height*0.03,),

                      ],
                    ),
                  ),
                ),
              );
            }
        );
      },
    );
  }

  registrationsheeet(){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      context: context,
      isScrollControlled: true,

      builder: (BuildContext context) {

        return StatefulBuilder(

            builder: (context, setState) {



              return Container(
                padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    border: Border.all(color: Appcolors.greenlight,width: 2)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Registration',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 20,fontWeight: FontWeight.w600
                          ),),

                          Expanded(child: SizedBox()),

                          Container(

                            padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                            decoration: BoxDecoration(
                              color: Appcolors.red,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(Icons.clear,color: Colors.white,size: 13,),
                          ),

                          SizedBox(width: width*0.01,),

                          InkWell(

                            onTap: (){
                              Navigator.pop(context);
                            },

                            child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                            ),),
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Text('Register with us today and get all the services at your fingertips!',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 15,fontWeight: FontWeight.w400
                      ),
                        textAlign: TextAlign.justify,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 25,right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(

                              child: GestureDetector(
                                onTap: (){

                                 getyouanaccount();

                                },

                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Appcolors.greenlight),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                                        child: Image.asset('assest/Iocns/membericon.png',scale: 4,),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Members',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 20,fontWeight: FontWeight.w600
                                    ),),
                                  ],
                                ),
                              ),
                            ),


                            SizedBox(width: width*0.1,),

                            Expanded(

                              child: GestureDetector(

                                onTap: (){
                                  setState(() {
                                    PartnerRegistration();
                                  });

                                },

                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Appcolors.greenlight),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                                        child: Image.asset('assest/Iocns/partnericon.png',scale: 4,),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Partners',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 20,fontWeight: FontWeight.w600
                                    ),),
                                  ],
                                ),
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

        );

      },
    );
  }

  @override
  void initState() {
    super.initState();
    _pinCodeController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    _textController.dispose();
    _errorController.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
     width = MediaQuery.of(context).size.width;
     height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.white,
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Form(

          key: _forMKey,

          child: Padding(
            padding: const EdgeInsets.only(top: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26,right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LanguagePage()));
                        },

                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 23,vertical: 7),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight,),
                            borderRadius: BorderRadius.circular(5),
                            color: Appcolors.green1.withOpacity(0.5),
                          ),
                          child: Text('ENG',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 15,fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),

                      Expanded(child: SizedBox()),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight,),
                          borderRadius: BorderRadius.circular(5),
                          color: Appcolors.green1.withOpacity(0.5),
                        ),
                        child: Text('SKIP',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w600
                        ),),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: height*0.25,),

                Center(
                  child: Text('Welcome back!',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 33,fontWeight: FontWeight.w600
                  ),),
                ),

                SizedBox(height: height*0.03,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text('Login To Your Account',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 17,fontWeight: FontWeight.w600
                  ),),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.only(left: 51, right: 50),
                  child: Row(
                    children: [
                      Container(

                        padding: EdgeInsets.symmetric(vertical: 1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Appcolors.greenlight),
                            color: Colors.white
                        ),
                        child: CountryCodePicker(
                          onChanged: _onCountryChange,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'IN',
                          favorite: ['+91'],
                          textStyle: Textstyle2Light18.appbartextstyle.copyWith(
                              color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600
                          ),
                          // optional. Shows only country name and flag

                          showFlag: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          showFlagDialog: true,
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          // height: height*0.067,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),


                          ),
                          child: TextFormField(
                            controller: contact,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "";

                              }
                            },
                            // cursorHeight: 18,

                            decoration: Inputdec3.inputDecoration.copyWith(
                              fillColor: Colors.white,
                              errorStyle: TextStyle(height: 0),
                              contentPadding: EdgeInsets.all(18),
                              labelText: 'Contact no',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      obscureText: _isObscure,
                      controller: password,
                      cursorHeight: 18,
                      decoration: Inputdec3.inputDecoration.copyWith(

                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(18),
                        errorStyle: TextStyle(height: 0),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Appcolors.greenlight,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: Row(
                    children: [

                      /*InkWell(
                        onTap: () {
                          setState(() {
                            rememberMe == false
                                ? rememberMe = true
                                : rememberMe = false;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 14.0,
                              width: 28.0,
                              decoration: BoxDecoration(
                                color: Appcolors.blue1,
                                borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                    width: 1,
                                    color: rememberMe == false
                                        ? Appcolors.blue
                                        : Appcolors
                                        .blue),
                              ),
                            ),
                            Positioned(
                              left: rememberMe ? 15 : 0,
                              child: Container(
                                height: 14.0,
                                width: 12.50,
                                decoration: BoxDecoration(
                                  color: rememberMe == false
                                      ? Appcolors.blue1
                                      : Appcolors.blue
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1,
                                      color: rememberMe == false
                                          ? Appcolors.blue
                                          : Appcolors
                                          .blue),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),*/

                      FlutterSwitch(
                        width: width*0.1,
                        height: 18,
                        activeToggleBorder: Border.all(color: Appcolors.blue,),
                        inactiveToggleBorder: Border.all(color: Appcolors.greenlight),
                        toggleColor: Appcolors.blue1.withOpacity(0.6),
                        inactiveToggleColor: Appcolors.green1,
                        padding: 0,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        activeSwitchBorder: Border.all(color: Appcolors.blue),
                        inactiveSwitchBorder: Border.all(color: Appcolors.greenlight),
                        toggleSize: 20.0,
                        value: status,
                        borderRadius: 20.0,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),

                      SizedBox(width: width*0.0091,),

                      Text('Remember me',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 13,fontWeight: FontWeight.w400
                      ),),

                      Expanded(child: SizedBox()),

                      TextButton(
                          child: Text('Forgot  Password?',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 10,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,color: Appcolors.greenlight
                          ),),
                          onPressed: (){
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                      return Container(
                                        padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            border: Border.all(color: Appcolors.greenlight,width: 2)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Text('Forgot your password?',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 20,fontWeight: FontWeight.w600
                                                  ),),

                                                  Expanded(child: SizedBox()),

                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Appcolors.red,
                                                      borderRadius: BorderRadius.circular(50),
                                                    ),
                                                    child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                  ),

                                                  SizedBox(width: width*0.01,),

                                                  InkWell(

                                                    onTap: (){
                                                      Navigator.pop(context);
                                                    },

                                                    child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                    ),),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 15),
                                              Text('No worries. Just key in the mobile number that is registered with us and we will help you get this sorted out.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w400
                                              ),
                                                textAlign: TextAlign.justify,
                                              ),

                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.symmetric(vertical: 3),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20),
                                                          border: Border.all(color: Appcolors.greenlight),
                                                          color: Colors.white
                                                      ),
                                                      child: CountryCodePicker(
                                                        onChanged: _onCountryChange,
                                                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                                        initialSelection: 'IN',
                                                        favorite: ['+91'],
                                                        textStyle: Textstyle2Light18.appbartextstyle.copyWith(
                                                            color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600
                                                        ),
                                                        // optional. Shows only country name and flag

                                                        showFlag: false,
                                                        // optional. Shows only country name and flag when popup is closed.
                                                        showOnlyCountryWhenClosed: false,
                                                        showFlagDialog: true,
                                                        // optional. aligns the flag and the Text left
                                                        alignLeft: false,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Expanded(
                                                      child: TextFormField(

                                                        controller: contact1,

                                                        keyboardType: TextInputType.phone,
                                                        validator: (value) {
                                                          return _validateText(value);
                                                        },
                                                        onFieldSubmitted: (value) {
                                                          _formKey.currentState.validate();
                                                        },
                                                        // cursorHeight: 18,

                                                        decoration: Inputdec3.inputDecoration.copyWith(
                                                          fillColor: Colors.white,
                                                          errorStyle: TextStyle(height: 0),
                                                          hintText: 'Contact no',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              InkWell(

                                                onTap: (){

                                                  showModalBottomSheet(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(20),
                                                        topRight: Radius.circular(20),
                                                      ),
                                                    ),
                                                    context: context,
                                                    isScrollControlled: true,
                                                    builder: (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context, setState) {
                                                            return Container(
                                                              padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                                              decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(20),
                                                                    topRight: Radius.circular(20),
                                                                  ),
                                                                  border: Border.all(color: Appcolors.greenlight,width: 2)
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                child: Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: <Widget>[
                                                                    Row(
                                                                      children: [
                                                                        Text('Enter Your OTP Code',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                            fontSize: 20,fontWeight: FontWeight.w600
                                                                        ),),

                                                                        Expanded(child: SizedBox()),

                                                                        Container(
                                                                          width: 20,
                                                                          height: 20,
                                                                          decoration: BoxDecoration(
                                                                            color: Appcolors.red,
                                                                            borderRadius: BorderRadius.circular(50),
                                                                          ),
                                                                          child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                                        ),

                                                                        SizedBox(width: width*0.01,),

                                                                        InkWell(

                                                                          onTap: (){
                                                                            Navigator.pop(context);
                                                                          },

                                                                          child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                              fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                          ),),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 15),
                                                                    RichText(
                                                                      text: const TextSpan(
                                                                        text: 'Please enter the 4 digit code sent to: +911234567890 ',
                                                                        style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontFamily: 'OpenSans-VariableFont',
                                                                          fontSize: 15,),
                                                                        children: <TextSpan>[
                                                                          TextSpan(
                                                                              text: 'Resend code (15 seconds)',
                                                                              style: TextStyle(
                                                                                  color: Appcolors.greenlight,
                                                                                  fontFamily: 'OpenSans-VariableFont',
                                                                                  fontSize: 10,decoration: TextDecoration.underline)
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),

                                                                    SizedBox(height: 30,),

                                                                    Padding(
                                                                      padding: const EdgeInsets.symmetric(
                                                                          horizontal: 10, vertical: 12),
                                                                      child: PinCodeTextField(
                                                                        onChanged: (value) {},

                                                                        autoDisposeControllers: false,
                                                                        controller: _pinCodeController,
                                                                        appContext: context,
                                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                        length: 4,
                                                                        keyboardType: TextInputType.phone,
                                                                        autoDismissKeyboard: false,
                                                                        textStyle: TextStyle(
                                                                          fontSize: 18,
                                                                          fontWeight: FontWeight.bold,
                                                                          fontFamily: 'OpenSans-SemiBold',
                                                                        ),
                                                                        // backgroundColor: Colors.white,
                                                                        autoFocus: true,
                                                                        enablePinAutofill: true,
                                                                        pinTheme: PinTheme(
                                                                          shape: PinCodeFieldShape.box,
                                                                          borderRadius: BorderRadius.circular(10),
                                                                          fieldHeight: 45,
                                                                          fieldWidth: 45,
                                                                          disabledColor: Appcolors.greenlight,
                                                                          activeColor: Appcolors.greenlight,
                                                                          inactiveColor: Appcolors.greenlight,
                                                                          selectedColor: Appcolors.greenlight,
                                                                          selectedFillColor: Appcolors.greenlight,
                                                                          // borderRadius: BorderRadius.circular(5),
                                                                          activeFillColor: Appcolors.greenlight,
                                                                        ),
                                                                        animationType: AnimationType.fade,
                                                                        animationDuration: Duration(milliseconds: 300),
                                                                        cursorColor: Colors.black,
                                                                        cursorHeight: 15,
                                                                        // errorAnimationController: errorController, // Pass it here
                                                                      ),
                                                                    ),

                                                                    SizedBox(height: 20),

                                                                    Padding(
                                                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                                                      child: Row(
                                                                        children: [

                                                                          InkWell(

                                                                            onTap: (){
                                                                              Navigator.pop(context);
                                                                            },

                                                                            child: Container(
                                                                              width: width*0.2,
                                                                              padding: EdgeInsets.symmetric(vertical: 6),
                                                                              decoration: BoxDecoration(
                                                                                color: Appcolors.green1,
                                                                                border: Border.all(color: Appcolors.greenlight),
                                                                                borderRadius: BorderRadius.circular(20),
                                                                              ),

                                                                              child: Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Icon(Icons.arrow_back),
                                                                                  Text('Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                    fontSize: 15,fontWeight: FontWeight.w400,
                                                                                  ),),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),

                                                                          Expanded(child: SizedBox()),

                                                                          InkWell(

                                                                            onTap: (){

                                                                              setState(() {

                                                                                if (_pinCodeController.text == "1234") {
                                                                                  showModalBottomSheet(
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.only(
                                                                                        topLeft: Radius.circular(20),
                                                                                        topRight: Radius.circular(20),
                                                                                      ),
                                                                                    ),
                                                                                    context: context,
                                                                                    isScrollControlled: true,
                                                                                    builder: (BuildContext context) {
                                                                                      return StatefulBuilder(
                                                                                          builder: (context, setState) {
                                                                                            return Container(
                                                                                              padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                                                                              decoration: BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    topLeft: Radius.circular(20),
                                                                                                    topRight: Radius.circular(20),
                                                                                                  ),
                                                                                                  border: Border.all(color: Appcolors.greenlight,width: 2)
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: <Widget>[
                                                                                                    Row(
                                                                                                      children: [
                                                                                                        Text('Reset Password',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                            fontSize: 20,fontWeight: FontWeight.w600
                                                                                                        ),),

                                                                                                        Expanded(child: SizedBox()),

                                                                                                        Container(
                                                                                                          width: 20,
                                                                                                          height: 20,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: Appcolors.red,
                                                                                                            borderRadius: BorderRadius.circular(50),
                                                                                                          ),
                                                                                                          child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                                                                        ),

                                                                                                        SizedBox(width: width*0.01,),

                                                                                                        InkWell(

                                                                                                          onTap: (){
                                                                                                            Navigator.pop(context);
                                                                                                          },

                                                                                                          child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                              fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                                                          ),),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    SizedBox(height: 15),
                                                                                                    Text('Set new password for your account so you can login and access all our services at your fingertips!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                        fontSize: 15,fontWeight: FontWeight.w400
                                                                                                    ),
                                                                                                      textAlign: TextAlign.justify,
                                                                                                    ),

                                                                                                    SizedBox(height: 20),

                                                                                                    Container(

                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Colors.white,
                                                                                                        borderRadius: BorderRadius.circular(20),
                                                                                                      ),
                                                                                                      child: TextFormField(
                                                                                                        obscureText: _isObscure,
                                                                                                        decoration: Inputdec3.inputDecoration.copyWith(
                                                                                                          fillColor: Colors.white,
                                                                                                          contentPadding: EdgeInsets.all(15),
                                                                                                          hintText: 'New Password',
                                                                                                          suffixIcon: IconButton(
                                                                                                            icon: Icon(
                                                                                                              _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Colors.black,
                                                                                                            ),
                                                                                                            onPressed: () {
                                                                                                              setState(() {
                                                                                                                _isObscure = !_isObscure;
                                                                                                              });
                                                                                                            },
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),

                                                                                                    SizedBox(height: 20),

                                                                                                    Container(

                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Colors.white,
                                                                                                        borderRadius: BorderRadius.circular(20),
                                                                                                      ),
                                                                                                      child: TextFormField(
                                                                                                        obscureText: _isObscure,
                                                                                                        decoration: Inputdec3.inputDecoration.copyWith(
                                                                                                          contentPadding: EdgeInsets.all(15),
                                                                                                          fillColor: Colors.white,
                                                                                                          hintText: 'Retype New Password',
                                                                                                          suffixIcon: IconButton(
                                                                                                            icon: Icon(
                                                                                                              _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Colors.black,
                                                                                                            ),
                                                                                                            onPressed: () {
                                                                                                              setState(() {
                                                                                                                _isObscure = !_isObscure;
                                                                                                              });
                                                                                                            },
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),

                                                                                                    SizedBox(height: 15,),

                                                                                                    Padding(
                                                                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                                                      child: Row(
                                                                                                        children: [

                                                                                                          InkWell(

                                                                                                            onTap: (){
                                                                                                              Navigator.pop(context);
                                                                                                            },

                                                                                                            child: Container(
                                                                                                              width: width*0.2,
                                                                                                              padding: EdgeInsets.symmetric(vertical: 6),
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Appcolors.green1,
                                                                                                                border: Border.all(color: Appcolors.greenlight),
                                                                                                                borderRadius: BorderRadius.circular(20),
                                                                                                              ),

                                                                                                              child: Column(
                                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Icon(Icons.arrow_back),
                                                                                                                  Text('Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                    fontSize: 15,fontWeight: FontWeight.w400,
                                                                                                                  ),),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),

                                                                                                          Expanded(child: SizedBox()),

                                                                                                          InkWell(

                                                                                                            onTap: (){

                                                                                                              showModalBottomSheet(
                                                                                                                shape: RoundedRectangleBorder(
                                                                                                                  borderRadius: BorderRadius.only(
                                                                                                                    topLeft: Radius.circular(20),
                                                                                                                    topRight: Radius.circular(20),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                context: context,
                                                                                                                isScrollControlled: true,
                                                                                                                builder: (BuildContext context) {
                                                                                                                  return StatefulBuilder(
                                                                                                                      builder: (context, setState) {
                                                                                                                        return Container(
                                                                                                                          padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                                                                                                                          decoration: BoxDecoration(
                                                                                                                              borderRadius: BorderRadius.only(
                                                                                                                                topLeft: Radius.circular(20),
                                                                                                                                topRight: Radius.circular(20),
                                                                                                                              ),
                                                                                                                              border: Border.all(color: Appcolors.greenlight,width: 2)
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                              children: <Widget>[
                                                                                                                                Row(
                                                                                                                                  children: [
                                                                                                                                    Expanded(
                                                                                                                                      child: Text('Reset Password - Successful',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                                          fontSize: 18,fontWeight: FontWeight.w600
                                                                                                                                      ),
                                                                                                                                        textAlign: TextAlign.justify,
                                                                                                                                        overflow: TextOverflow.ellipsis,
                                                                                                                                      ),
                                                                                                                                    ),

                                                                                                                                    Expanded(child: SizedBox()),

                                                                                                                                    Container(
                                                                                                                                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                        color: Appcolors.red,
                                                                                                                                        borderRadius: BorderRadius.circular(50),
                                                                                                                                      ),
                                                                                                                                      child: Icon(Icons.clear,color: Colors.white,size: 13,),
                                                                                                                                    ),

                                                                                                                                    SizedBox(width: width*0.01,),

                                                                                                                                    InkWell(

                                                                                                                                      onTap: (){
                                                                                                                                        Navigator.pop(context);
                                                                                                                                      },

                                                                                                                                      child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                                          fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                                                                                      ),),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                SizedBox(height: 15),
                                                                                                                                Text('Your password was successfully updated! You can now access all our services.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                                    fontSize: 15,fontWeight: FontWeight.w400
                                                                                                                                ),
                                                                                                                                  textAlign: TextAlign.justify,
                                                                                                                                ),



                                                                                                                                Padding(
                                                                                                                                  padding: const EdgeInsets.only(left: 20,top: 110,right: 20),
                                                                                                                                  child: InkWell(

                                                                                                                                    onTap: (){
                                                                                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainLoginPage()));
                                                                                                                                    },

                                                                                                                                    child: Container(
                                                                                                                                      width: width*0.8,
                                                                                                                                      height: height*0.07,
                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                        color: Appcolors.green1,
                                                                                                                                        border: Border.all(color: Appcolors.greenlight),
                                                                                                                                        borderRadius: BorderRadius.circular(20),
                                                                                                                                      ),
                                                                                                                                      child: Center(
                                                                                                                                        child: Text('Login',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                                          fontSize: 25,fontWeight: FontWeight.w600,
                                                                                                                                        ),),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        );
                                                                                                                      }
                                                                                                                  );
                                                                                                                },
                                                                                                              );
                                                                                                            },

                                                                                                            child: Container(
                                                                                                              width: width*0.6,
                                                                                                              padding: EdgeInsets.symmetric(vertical: 10),
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Appcolors.green1,
                                                                                                                border: Border.all(color: Appcolors.greenlight),
                                                                                                                borderRadius: BorderRadius.circular(20),
                                                                                                              ),
                                                                                                              child: Center(
                                                                                                                child: Text('Reset',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                  fontSize: 25,fontWeight: FontWeight.w600,
                                                                                                                ),),
                                                                                                              ),
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
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                                else {
                                                                                 verificationdilog();
                                                                                }


                                                                              });

                                                                            },

                                                                            child: Container(
                                                                              width: width*0.5,
                                                                              padding: EdgeInsets.symmetric(vertical: 10),
                                                                              decoration: BoxDecoration(
                                                                                color: Appcolors.green1,
                                                                                border: Border.all(color: Appcolors.greenlight),
                                                                                borderRadius: BorderRadius.circular(20),
                                                                              ),
                                                                              child: Center(
                                                                                child: Text('Next',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                  fontSize: 25,fontWeight: FontWeight.w600,
                                                                                ),),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(child: SizedBox()),
                                                                        ],
                                                                      ),
                                                                    ),

                                                                    SizedBox(height: 20),

                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                      );
                                                    },
                                                  );

                                                },

                                                child: Container(
                                                  margin: EdgeInsets.symmetric(horizontal: 25,),
                                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                                  decoration: BoxDecoration(
                                                    color: Appcolors.green1,
                                                    border: Border.all(color: Appcolors.greenlight),
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: Center(
                                                    child: Text('Next',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 25,fontWeight: FontWeight.w600,
                                                    ),),
                                                  ),
                                                ),
                                              ),

                                              SizedBox(height: 20),

                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                );
                              },
                            );
                          }


                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 56,right: 51),
                  child: Container(
                    width: width*0.78,
                    height: height*0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:  SliderButton(
                     // dismissThresholds: 0.75,
                     alignLabel: Alignment(0.4, 0),
                      backgroundColor: Colors.white,
                      radius: 15,
                      dismissible: true,
                      shimmer: false,

                      action: () {
                        if(_forMKey.currentState.validate()) {
                          if (contact.text == "1234567890" && password.text == "1234") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyLocation()));
                          }
                          else {
                            return showDialog(
                              context: context,
                              builder: (ctx) =>
                                  Dialog(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                      height: height * 0.4,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text('Login Fail',
                                            style: Textstyle2Light18
                                                .appbartextstyle.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                            ),),

                                          Expanded(child: SizedBox()),

                                          Image.asset('assest/Image/failicon.png',
                                            scale: 5,),

                                          Expanded(child: SizedBox()),

                                          Text(
                                            'The mobile number or password is incorrect.',
                                            style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            ),),

                                          Expanded(child: SizedBox()),

                                          GestureDetector(

                                            onTap: (){
                                              Navigator.pop(context);
                                            },

                                            child: Container(
                                              width: width,
                                              padding: EdgeInsets.symmetric(vertical: 6),
                                              decoration: BoxDecoration(
                                                color: Appcolors.green1,
                                                border: Border.all(
                                                    color: Appcolors.greenlight),
                                                borderRadius: BorderRadius.circular(
                                                    15),
                                              ),
                                              child: Expanded(
                                                child: Center(
                                                  child: Text('Try again',
                                                    style: Textstyle2Light18
                                                        .appbartextstyle.copyWith(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 25,
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),
                            );
                          }

                        }
                      },
                      label: Text('Slide To Login',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w600,
                      ),),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: width*0.14,
                          height: height*0.055,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.arrow_forward,size: 35,),
                        ),
                      ),


                    ),


                    /*SwipeableButtonView(
                        buttonText: "Slide To Login",
                        indicatorColor: AlwaysStoppedAnimation(Colors.transparent),
                        buttontextstyle: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 18,fontWeight: FontWeight.w600,
                    ),
                        buttonWidget: Container(
                          width: width*0.14,
                          height: height*0.055,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.arrow_forward,size: 35,),
                        ),
                        activeColor: Colors.white,
                        isFinished: isFinished,
                        onWaitingProcess: () {
                          setState(() {
                            isFinished = true;
                          });
                        },
                        onFinish: () async {

                          if(_forMKey.currentState.validate()) {
                            if (contact.text == "1234567890" &&
                                password.text == "1234") {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyLocation()));
                            }
                            else {
                              return showDialog(
                                context: context,
                                builder: (ctx) =>
                                    Dialog(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        height: height * 0.4,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .center,
                                          children: [
                                            Text('Login Fail',
                                              style: Textstyle2Light18
                                                  .appbartextstyle.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                              ),),

                                            Expanded(child: SizedBox()),

                                            Image.asset('assest/Image/failicon.png',
                                              scale: 5,),

                                            Expanded(child: SizedBox()),

                                            Text(
                                              'The mobile number or password is incorrect.',
                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                              ),),

                                            Expanded(child: SizedBox()),

                                            GestureDetector(

                                              onTap: (){
                                                Navigator.pop(context);
                                              },

                                              child: Container(
                                                width: width,
                                                padding: EdgeInsets.symmetric(vertical: 6),
                                                decoration: BoxDecoration(
                                                  color: Appcolors.green1,
                                                  border: Border.all(
                                                      color: Appcolors.greenlight),
                                                  borderRadius: BorderRadius.circular(
                                                      15),
                                                ),
                                                child: Expanded(
                                                  child: Center(
                                                    child: Text('Try again',
                                                      style: Textstyle2Light18
                                                          .appbartextstyle.copyWith(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 25,
                                                      ),
                                                      textAlign: TextAlign.justify,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),
                              );
                            }

                          }

                          setState(() {
                            isFinished = false;
                          });
                        })*/



                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width*0.2,
                      height: 2,
                      decoration: BoxDecoration(
                          color: Appcolors.greenlight,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(
                                0.0,
                                0.5,),
                              blurRadius: 10.0,
                              spreadRadius: 0.5,
                            ),
                          ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 3,right: 3),
                      child: Text('Dont have an account with us yet?',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 10,fontWeight: FontWeight.w600,
                      ),),
                    ),

                    Container(
                      width: width*0.2,
                      height: 2,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              0.0,
                              2.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                          ),
                        ],
                        color: Appcolors.greenlight,
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 30),

                Center(
                  child: Container(
                    width: width*0.8,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight,),
                      borderRadius: BorderRadius.circular(15),
                      color: Appcolors.green1,
                    ),
                    child: RaisedButton(
                        elevation: 0,
                        color: Appcolors.green1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text('Register Now',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 25,fontWeight: FontWeight.w600
                        ),),
                        onPressed: (){
                          registrationsheeet();
                        }
                    ),
                  ),
                ),

                SizedBox(height: 15),

              ],
            ),
          ),
        ),
      ),
    );
  }



  /*List<Step> stepList() => [

    Step(

      isActive: _activeCurrentStep >= 0,
      title: Column(
        children: [

          Text('Users',style: Textstyle2Light18.appbartextstyle.copyWith(
              fontWeight: FontWeight.w300,fontSize: 12
          ),),
          Text('Details',style: Textstyle2Light18.appbartextstyle.copyWith(
              fontWeight: FontWeight.w300,fontSize: 12
          ),),
        ],
      ),

      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ClipRRect(
            borderRadius:
            BorderRadius.circular(100),
            child: Container(

              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child:

              imageFile == null

                  ? Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
              )

                  : Image.file(

                imageFile,

                fit: BoxFit.cover,

              ),

            ),
          ),



          InkWell(
              onTap: (){
                _getFromGallery();
              },
              child: Text('Tap to insert image')),

          SizedBox(height: 15),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: TextFormField(

              decoration: Inputdec1.inputDecoration.copyWith(
                hintText: 'Your Name (As per NRIC)*',

              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: TextFormField(

              decoration: Inputdec1.inputDecoration.copyWith(
                hintText: 'Email Address*',

              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.greenlight),
                    color: Colors.white
                ),
                child: CountryCodePicker(
                  onChanged: _onCountryChange,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IN',
                  favorite: ['+91'],
                  textStyle: Textstyle2Light18.appbartextstyle.copyWith(
                      color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600
                  ),
                  // optional. Shows only country name and flag

                  showFlag: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  showFlagDialog: true,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white

                  ),
                  child: TextFormField(

                    controller: contact2,

                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "";

                      }
                    },
                    // cursorHeight: 18,

                    decoration: Inputdec1.inputDecoration.copyWith(
                      errorStyle: TextStyle(height: 0),
                      hintText: 'Contact no',
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  if(email.text == "10-8822016" && password.text == "Test"){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));

                  }
                }
                return null;
              },
              obscureText: _isObscure,
              decoration: Inputdec1.inputDecoration.copyWith(
                hintText: 'Password*',
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  if(email.text == "10-8822016" && password.text == "Test"){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));

                  }
                }
                return null;
              },
              obscureText: _isObscure,
              decoration: Inputdec1.inputDecoration.copyWith(
                hintText: 'Re-type password*',
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          GestureDetector(
            onTap: (){
              setState(() {
                _activeCurrentStep += 1;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Next',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 25,fontWeight: FontWeight.w600,
                ),),
              ),
            ),
          ),

        ],
      ),
    ),

    Step(

        isActive: _activeCurrentStep >= 1,
        title: Column(
          children: [

            Text('Mobile No',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w300,fontSize: 12
            ),),
            Text('Verification',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w300,fontSize: 12
            ),),
          ],
        ),

        content: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Image.asset('assest/Image/passwordimage.png',scale: 4,),
              const SizedBox(
                height: 8,
              ),

              RichText(
                text: const TextSpan(
                  text: 'Enter the 4 digits code that you was sent to you at +60 10 - 8822016. ',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'OpenSans-VariableFont',
                      fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Resend code',
                        style: TextStyle(
                            color: Appcolors.greenlight,
                            fontFamily: 'OpenSans-VariableFont',
                            fontSize: 15,decoration: TextDecoration.underline)
                    ),

                  ],
                ),
                textAlign: TextAlign.justify,
              ),

              SizedBox(height: 20,),

              Container(

                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.only(left: 20,right: 20,),

                child: PinCodeTextField(
                  autoDisposeControllers: false,
                  appContext: context,
                  length: 4,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.scale,
                  errorAnimationController: _errorController1,
                  controller: _pinCodeController1,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(15),
                    activeFillColor: Appcolors.greenlight,
                    inactiveColor: Appcolors.greenlight,
                    inactiveFillColor: Colors.white,
                    fieldHeight: 50,
                    fieldWidth: 50,
                  ),
                  validator: (value) {
                    print('Validated PIN code input { value: $value }');
                    return _validatePinCode(value);
                  },
                  onChanged: (value) {
                    print('Changed PIN code input { value: $value }');
                  },
                  onCompleted: (value) {
                    print('Completed PIN code input { value: $value }');
                  },
                ),
              ),

              SizedBox(
                height: 20,
              ),


              Row(
                children: [
                  GestureDetector(

                    onTap: (){
                      setState(() {
                        _activeCurrentStep -= 1;
                      });
                    },

                    child: Container(
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 60,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back),
                          Text('Back',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 15,fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Appcolors.green1,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: RaisedButton(
                          elevation: 0,
                          color: Appcolors.green1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 25,fontWeight: FontWeight.w600,
                          ),),
                          onPressed: (){}
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ))

  ];
*/

}

