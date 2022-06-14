// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Forgotpassword/resetpassword.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({Key key}) : super(key: key);

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {


  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();



  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }


  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  File imageFile;


  bool isSwitched = false;
  var selectedval = "student";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26,right: 26,top: 26),
                  child: Row(
                    children: [
                      Expanded(child: SizedBox()),
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


                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 26,right: 26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
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
                                Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                ),),
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

                            /*Container(
                              width: 60,
                              height: 60,
                              child: PinCodeTextField(
                                appContext: context,
                                length: 4,
                                obscureText: true,
                                animationType: AnimationType.none,

                                pinTheme: PinTheme(
                                  errorBorderColor: Appcolors.greenlight,
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(20),
                                  fieldOuterPadding: EdgeInsets.only(top: 15),
                                  inactiveFillColor: Colors.white,
                                  inactiveColor: Colors.white,
                                  activeFillColor: Colors.white,
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
                            ),*/

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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword()));
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),




      ),
    );
  }
}
