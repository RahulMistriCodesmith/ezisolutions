// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class Members extends StatefulWidget {
  const Members({Key key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {

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
  bool _isObscure = false;
  var selectedval = "student";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();

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
                child: Container(

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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  if(email.text == "10-8822016" && password.text == "Test"){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));

                  }
                }
                return null;
              },
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  if(email.text == "10-8822016" && password.text == "Test"){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));

                  }
                }
                return null;
              },
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
              ),

              SizedBox(height: 20,),

              /*Container(
                width: 30,
                height: 30,
                child: PinCodeTextField(
                  length: 4,
                  obscureText: true,
                  animationType: AnimationType.none,
                  key: formKey,
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
                  padding: const EdgeInsets.only(top: 80),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 26,right: 26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
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

                            Container(

                              width: width,
                              height: height,
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
