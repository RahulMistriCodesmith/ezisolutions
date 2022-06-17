// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/bottomnavigation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MainLoginPage2 extends StatefulWidget {
  const MainLoginPage2({Key key}) : super(key: key);

  @override
  State<MainLoginPage2> createState() => _MainLoginPage2State();
}

class _MainLoginPage2State extends State<MainLoginPage2> {

  var onTapRecognizer;

  /// this [StreamController] will take input of which function should be called

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  var errorController;

  var textEditingController;


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


  final formKey = GlobalKey<FormState>();


  File imageFile;

  bool isSwitched = false;
  bool _isObscure = false;
  final _formKey = GlobalKey<FormState>();
  var selectedval = "student";

  TextEditingController contact = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  // ..text = "123456";



  int _activeCurrentStep = 0;

  List<Step> stepList() => [

    Step(
      state: _activeCurrentStep <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeCurrentStep >= 0,
      title: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Appcolors.green1,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(50),
            ),
            width: 50,
            height: 50,
            child: Center(
              child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                  color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
              ),),
            ),
          ),
          Text('Users Details'),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ClipRRect(
            borderRadius:
            BorderRadius.circular(100),
            child: Container(

              width: 100,
              height: 100,
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

          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(

              decoration: Inputdec2.inputDecoration.copyWith(
                hintText: 'Your Name (As per NRIC)*',

              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(

              decoration: Inputdec2.inputDecoration.copyWith(
                hintText: 'Email Address*',

              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(

                onTap: (){
                  showCountryPicker(
                    context: context,
                    //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                    exclude: <String>['KN', 'MF'],
                    favorite: <String>['IN'],
                    //Optional. Shows phone code before the country name.
                    showPhoneCode: true,
                    onSelect: (Country country) {
                      print('Select country: ${country.displayName}');
                    },
                    // Optional. Sets the theme for the country list picker.
                    countryListTheme: CountryListThemeData(
                      // Optional. Sets the border radius for the bottomsheet.
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      // Optional. Styles the search field.
                      inputDecoration: InputDecoration(
                        labelText: 'Search',
                        hintText: 'Start typing to search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8C98A8).withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                  );
                },

                child: Container(

                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.greenlight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('61+',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 26,color: Colors.grey),)),
                ),

              ),

              SizedBox(width: 10,),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5,top: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.greenlight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {

                      }
                      return null;
                    },
                    textAlign: TextAlign.start,
                    decoration: Inputdec2.inputDecoration.copyWith(
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
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              obscureText: _isObscure,
              decoration: Inputdec2.inputDecoration.copyWith(
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
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(

              obscureText: _isObscure,
              decoration: Inputdec2.inputDecoration.copyWith(
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
              padding: EdgeInsets.only(left: 115,right: 115),
              height: 60,
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

        ],
      ),
    ),

    Step(
        state:
        _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrentStep >= 1,
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 50,
              height: 50,
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Mobile No Verification'),
          ],
        ),
        content: Column(
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
            ),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 60,
              child: PinCodeTextField(
                length: 4,
                obscureText: true,
                animationType: AnimationType.none,
                pinTheme: PinTheme(
                  errorBorderColor: Appcolors.greenlight,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldOuterPadding: EdgeInsets.only(top: 10),
                  inactiveFillColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeFillColor: Colors.white,
                  borderWidth: 10,
                  fieldHeight: 50,
                  fieldWidth: 40,
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

            SizedBox(height: 20,),


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
        ))
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.background,
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      Container(
                        width: width*0.18,
                        height: height*0.039,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.blue),
                          borderRadius: BorderRadius.circular(5),
                          color: Appcolors.blue1.withOpacity(0.5),
                        ),
                        child: RaisedButton(
                            color: Appcolors.blue1.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text('BM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 15,fontWeight: FontWeight.w600
                            ),),
                            onPressed: (){}),
                      ),

                      SizedBox(width: width*0.51,),

                      Container(
                        width: width*0.18,
                        height: height*0.039,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight,),
                          borderRadius: BorderRadius.circular(5),
                          color: Appcolors.green1.withOpacity(0.5),
                        ),
                        child: RaisedButton(
                            color: Appcolors.green1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text('SKIP',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 15,fontWeight: FontWeight.w600
                            ),),
                            onPressed: (){}),
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
                  padding: const EdgeInsets.only(left: 56,right: 51),
                  child: Text('Login To Your Account',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600
                  ),),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 56,right: 51),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: width*0.15,
                          height: height*0.06,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Center(child: Text('61+',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontSize: 26,color: Colors.grey),)),
                        ),
                        onTap: (){
                          showCountryPicker(
                            context: context,
                            //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                            exclude: <String>['KN', 'MF'],
                            favorite: <String>['IN'],
                            //Optional. Shows phone code before the country name.
                            showPhoneCode: true,
                            onSelect: (Country country) {
                              print('Select country: ${country.displayName}');
                            },
                            // Optional. Sets the theme for the country list picker.
                            countryListTheme: CountryListThemeData(
                              // Optional. Sets the border radius for the bottomsheet.
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                              ),
                              // Optional. Styles the search field.
                              inputDecoration: InputDecoration(
                                labelText: 'Search',
                                hintText: 'Start typing to search',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF8C98A8).withOpacity(0.2),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),

                      SizedBox(width: 10,),

                      Container(
                        // padding: EdgeInsets.only(left: 5),
                        width: width*0.55,
                        height: height*0.06,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight),
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: TextFormField(
                          controller: contact,
                          validator: (value) {
                            if (value == null || value.isEmpty) {

                            }
                            return null;
                          },
                          textAlign: TextAlign.center,
                          decoration: Inputdec2.inputDecoration.copyWith(
                            hintText: 'Contact no',
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 56,right: 51),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    width: width*0.78,
                    height: height*0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value == null || value.isEmpty) {

                        }
                        return null;
                      },
                      obscureText: _isObscure,
                      decoration: Inputdec2.inputDecoration.copyWith(
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
                  padding: const EdgeInsets.only(top: 5,left: 56,right: 51),
                  child: Row(
                    children: [
                      Container(

                        width: 37.82,
                        height: 21.61,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Appcolors.greenlight),
                          borderRadius: BorderRadius.circular(10.806),
                        ),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value){
                            setState(() {
                              isSwitched = value;
                            });
                          },

                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.white,
                          activeColor: Appcolors.green1,
                          inactiveThumbColor: Appcolors.green1,
                        ),
                      ),

                      SizedBox(width: width*0.02,),

                      Text('Remember me',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 15,fontWeight: FontWeight.w400
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
                                                    fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                ),),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Text('No worries. Just key in the mobile number that is registered with us and we will help you get this sorted out.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400
                                          ),),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 30,top: 20,bottom: 20),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    width: width*0.15,
                                                    height: height*0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Appcolors.greenlight),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    child: Center(child: Text('61+',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 26,color: Colors.grey),)),
                                                  ),
                                                  onTap: (){
                                                    showCountryPicker(
                                                      context: context,
                                                      //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                                                      exclude: <String>['KN', 'MF'],
                                                      favorite: <String>['SE'],
                                                      //Optional. Shows phone code before the country name.
                                                      showPhoneCode: true,
                                                      onSelect: (Country country) {
                                                        print('Select country: ${country.displayName}');
                                                      },
                                                      // Optional. Sets the theme for the country list picker.
                                                      countryListTheme: CountryListThemeData(
                                                        // Optional. Sets the border radius for the bottomsheet.
                                                        borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(40.0),
                                                          topRight: Radius.circular(40.0),
                                                        ),
                                                        // Optional. Styles the search field.
                                                        inputDecoration: InputDecoration(
                                                          labelText: 'Search',
                                                          hintText: 'Start typing to search',
                                                          prefixIcon: const Icon(Icons.search),
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                              color: const Color(0xFF8C98A8).withOpacity(0.2),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),

                                                SizedBox(width: 10,),

                                                Container(
                                                  // padding: EdgeInsets.only(left: 5),
                                                  width: width*0.55,
                                                  height: height*0.06,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Appcolors.greenlight),
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: TextFormField(
                                                    validator: (value) {
                                                      if (value == null || value.isEmpty) {

                                                      }
                                                      return null;
                                                    },
                                                    textAlign: TextAlign.center,
                                                    decoration: Inputdec2.inputDecoration.copyWith(
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
                                                                        fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
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
                                                                      fontSize: 15),
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

                                                              SizedBox(height: 20,),

                                                              Container(
                                                                padding: EdgeInsets.only(left: 20,right: 20),
                                                                width: width,
                                                                height: 60,
                                                                child: PinCodeTextField(
                                                                  length: 4,
                                                                  obscureText: true,
                                                                  animationType: AnimationType.none,
                                                                  pinTheme: PinTheme(
                                                                    errorBorderColor: Appcolors.greenlight,
                                                                    shape: PinCodeFieldShape.box,
                                                                    borderRadius: BorderRadius.circular(10),
                                                                    fieldOuterPadding: EdgeInsets.only(top: 10),
                                                                    inactiveFillColor: Colors.white,
                                                                    inactiveColor: Colors.white,
                                                                    activeFillColor: Colors.white,
                                                                    borderWidth: 10,
                                                                    fieldHeight: 50,
                                                                    fieldWidth: 40,
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

                                                              SizedBox(height: 60,),

                                                              Row(
                                                                children: [

                                                                  InkWell(

                                                                    onTap: (){
                                                                      Navigator.pop(context);
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

                                                                  SizedBox(width: 15),

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
                                                                                                fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                                            ),),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(height: 15),
                                                                                      Text('Set new password for your account so you can login and access all our services at your fingertips!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                          fontSize: 15,fontWeight: FontWeight.w400
                                                                                      ),),

                                                                                      SizedBox(height: 20),

                                                                                      Container(
                                                                                        padding: EdgeInsets.only(left: 10),
                                                                                        width: width*0.78,
                                                                                        height: height*0.06,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(color: Appcolors.greenlight),
                                                                                          borderRadius: BorderRadius.circular(10),
                                                                                        ),
                                                                                        child: TextFormField(
                                                                                          obscureText: _isObscure,
                                                                                          decoration: Inputdec2.inputDecoration.copyWith(
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
                                                                                        padding: EdgeInsets.only(left: 10),
                                                                                        width: width*0.78,
                                                                                        height: height*0.06,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(color: Appcolors.greenlight),
                                                                                          borderRadius: BorderRadius.circular(10),
                                                                                        ),
                                                                                        child: TextFormField(
                                                                                          obscureText: _isObscure,
                                                                                          decoration: Inputdec2.inputDecoration.copyWith(
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

                                                                                      Padding(
                                                                                        padding: const EdgeInsets.only(left: 20,top: 25),
                                                                                        child: Row(
                                                                                          children: [

                                                                                            InkWell(

                                                                                              onTap: (){
                                                                                                Navigator.pop(context);
                                                                                              },

                                                                                              child: Container(
                                                                                                width: 60,
                                                                                                height: 60,
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

                                                                                            SizedBox(width: 15),

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
                                                                                                                    Text('Reset Password - Successful',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                                                                                                                          fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                                                                                                      ),),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                SizedBox(height: 15),
                                                                                                                Text('Your password was successfully updated! You can now access all our services.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                                                                    fontSize: 15,fontWeight: FontWeight.w400
                                                                                                                ),),



                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.only(left: 20,top: 110,right: 20),
                                                                                                                  child: InkWell(

                                                                                                                    onTap: (){
                                                                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainLoginPage2()));
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
                                                                                                height: height*0.07,
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
                                                                      width: width*0.6,
                                                                      height: height*0.07,
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
                                                                ],
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
                                              width: width*0.75,
                                              height: height*0.06,
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

                        },

                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 56,right: 51),
                  child: Row(
                    children: [
                      Text('Login',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600,
                      ),),

                      Expanded(child: SizedBox()),

                      GestureDetector(

                        onTap: (){
                          setState(() {

                            if (contact.text == "123" && password.text == "123") {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));

                            }
                          });
                        },

                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(100),
                            color: Appcolors.green1,
                          ),
                          child: Icon(Icons.arrow_forward,size: 35,),
                        ),
                      ),
                    ],
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
                                                  fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                              ),),
                                            ),
                                          ],
                                        ),
                                        Text('Register with us today and get all the services at your fingertips!',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w400
                                        ),),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 20),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
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
                                                            height: height-100,
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
                                                                            fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
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
                                                        child: Image.asset('assest/Iocns/membericon.png',scale: 5,),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Text('Members',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 20,fontWeight: FontWeight.w600
                                                    ),),
                                                  ],
                                                ),
                                              ),

                                              SizedBox(width: 80,),

                                              Column(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Appcolors.greenlight),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                                                      child: Image.asset('assest/Iocns/partnericon.png',scale: 5,),
                                                    ),
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Text('Partners',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 20,fontWeight: FontWeight.w600
                                                  ),),
                                                ],
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

}
