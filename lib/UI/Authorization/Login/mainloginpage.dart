// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_element, prefer_typing_uninitialized_variables, avoid_print, missing_required_param, sized_box_for_whitespace, avoid_unnecessary_containers, curly_braces_in_flow_control_structures

import 'dart:async';
import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Login/languagepage.dart';
import 'package:ezisolutions/UI/Home/location/mylocation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:slider_button/slider_button.dart';
class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key key}) : super(key: key);

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {

  TextEditingController phoneController = new TextEditingController();
  String phoneNumber = "";

  void _onCountryChange(CountryCode countryCode) {
    this.phoneNumber =  countryCode.toString();
    print("New Country selected: " + countryCode.toString());
  }

  void check(){
    print("Full Text: "+ this.phoneNumber + phoneController.text);
  }

  final GlobalKey<FormState> _forMKey = GlobalKey<FormState>();



  var onTapRecognizer;

  /// this [StreamController] will take input of which function should be called

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  var errorController;

  var textEditingController;
  bool status = false;


  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isSwitched = false;
  bool _isObscure = true;
  var selectedval = 'slide1';


bool cl=false;
  File imageFile;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController contact1 = TextEditingController();

  int _activeCurrentStep = 0;



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
                      fontSize: 38,fontWeight: FontWeight.w600
                  ),),
                ),

                SizedBox(height: height*0.03,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text('Login To Your Account',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600
                  ),),
                ),

                SizedBox(height: 10,),



                Padding(
                  padding: EdgeInsets.only(left: 51, right: 50),
                  child: Row(
                    children: [
                      Container(
                        // width: 76,
                        height: height*0.075,
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
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white

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
                              errorStyle: TextStyle(height: 0),
                              hintText: 'Contact no',
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
                        errorStyle: TextStyle(height: 0),
                        hintText: 'Password',
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
                      FlutterSwitch(
                        width: width*0.1,
                        height: 20,
                        toggleBorder: Border.all(color: Appcolors.blue,),
                        toggleColor: Appcolors.blue1.withOpacity(0.6),
                        padding: 0,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        activeSwitchBorder: Border.all(color: Appcolors.blue),
                        inactiveSwitchBorder: Border.all(color: Appcolors.blue),
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
                              barrierColor: Appcolors.grey,
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                      return Padding(
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
                                                    // width: 76,
                                                    height: height*0.079,
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

                                                      controller: contact,

                                                      keyboardType: TextInputType.phone,
                                                      validator: (value) {
                                                        if (value == null || value.isEmpty) {
                                                          return "";

                                                        }
                                                      },
                                                      // cursorHeight: 18,

                                                      decoration: Inputdec3.inputDecoration.copyWith(
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
                                                  barrierColor: Appcolors.grey,
                                                  context: context,
                                                  isScrollControlled: true,
                                                  builder: (BuildContext context) {
                                                    return StatefulBuilder(
                                                        builder: (context, setState) {
                                                          return Padding(
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
                                                                    text: 'Please enter the 4 digit code sent to: +60 123334444 ',
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

                                                                Container(
                                                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                                                  padding: EdgeInsets.only(left: 20,right: 20,),

                                                                  child: PinCodeTextField(

                                                                    length: 4,
                                                                    obscureText: true,
                                                                    animationType: AnimationType.none,
                                                                    pinTheme: PinTheme(

                                                                        shape: PinCodeFieldShape.box,
                                                                        borderRadius: BorderRadius.circular(15),

                                                                        activeFillColor: Appcolors.greenlight,
                                                                        inactiveColor: Appcolors.greenlight,
                                                                        inactiveFillColor: Colors.white,
                                                                        // selectedFillColor: Colors.deepPurple,
                                                                        // selectedColor: Colors.greenAccent,
                                                                        // activeColor: Colors.blue


                                                                    ),
                                                                    animationDuration: Duration(milliseconds: 300),

                                                                    enableActiveFill: true,
                                                                    errorAnimationController: errorController,
                                                                    controller: textEditingController,
                                                                    onCompleted: (v) {
                                                                      print("Completed");
                                                                    },



                                                                    onChanged: (value) {
                                                                      print(value);
                                                                      setState(() {
                                                                        currentText = value;
                                                                      });
                                                                    },

                                                                    beforeTextPaste: (text) {
                                                                      print("Allowing to paste $text");
                                                                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                                                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                                                      return true;

                                                                    },

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

                                                                          showModalBottomSheet(
                                                                            shape: RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.only(
                                                                                topLeft: Radius.circular(20),
                                                                                topRight: Radius.circular(20),
                                                                              ),
                                                                            ),
                                                                            barrierColor: Appcolors.grey,
                                                                            context: context,
                                                                            isScrollControlled: true,
                                                                            builder: (BuildContext context) {
                                                                              return StatefulBuilder(
                                                                                  builder: (context, setState) {
                                                                                    return Padding(
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
                                                                                                      barrierColor: Appcolors.grey,
                                                                                                      context: context,
                                                                                                      isScrollControlled: true,
                                                                                                      builder: (BuildContext context) {
                                                                                                        return StatefulBuilder(
                                                                                                            builder: (context, setState) {
                                                                                                              return Padding(
                                                                                                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                  children: <Widget>[
                                                                                                                    Row(
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text('Reset Password - Successful',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                              fontSize: 20,fontWeight: FontWeight.w600
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
                                                                                    );
                                                                                  }
                                                                              );
                                                                            },
                                                                          );
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
                    child: SliderButton(

                      backgroundColor: Colors.white,
                      radius: 15,
                      shimmer: false,

                      action: () {
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
                                                child: Text('Try agin',
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
                        };

                        }
                        },
                      label: Text('Slide To Login',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 20,fontWeight: FontWeight.w600,
                      ),),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: width*0.14,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.arrow_forward,size: 35,),
                        ),
                      ),


                    ),
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
                        color: Appcolors.greenlight,
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 30,),

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
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            barrierColor: Appcolors.grey,
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (context, setState) {
                                    return Padding(
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
                                                                return Container(
                                                                  height: height-70,
                                                                  width: width,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: <Widget>[

                                                                        GestureDetector(

                                                                          onTap: (){
                                                                            Navigator.pop(context);
                                                                          },

                                                                          child: Row(
                                                                            children: [
                                                                              Text('Let’s Get You An Account!',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                                                              Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                  fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                              ),),
                                                                            ],
                                                                          ),
                                                                        ),

                                                                        Expanded(
                                                                          child: Stepper(
                                                                            elevation: 0,
                                                                            type: StepperType.horizontal,
                                                                            currentStep: _activeCurrentStep,
                                                                            steps: stepList(),
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
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    );
                                  }
                              );
                            },
                          );
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

  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(

      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,

    );
    if (pickedFile != null) {
      setState(() {

        imageFile = File(pickedFile.path);


      });
    }
  }

  List<Step> stepList() => [

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

                  ? Image.asset('assest/Image/profileimage.png',scale: 4,)

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

                    controller: contact,

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
                  keyboardType: TextInputType.number,
                  length: 4,
                  obscureText: true,
                  animationType: AnimationType.none,
                  pinTheme: PinTheme(

                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(15),

                    activeFillColor: Appcolors.greenlight,
                    inactiveColor: Appcolors.greenlight,
                    inactiveFillColor: Colors.white,
                    // selectedFillColor: Colors.deepPurple,
                    // selectedColor: Colors.greenAccent,
                    // activeColor: Colors.blue
                  ),
                  animationDuration: Duration(milliseconds: 300),

                  enableActiveFill: true,
                  errorAnimationController: errorController,
                  controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },



                  onChanged: (value) {
                    print(value);
                    setState(() {
                      currentText = value;
                    });
                  },

                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;

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


}

