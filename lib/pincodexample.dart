import 'dart:async';
import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage3 extends StatefulWidget {
  String uid;

  LoginPage3({Key key, this.uid}) : super(key: key);

  @override
  _LoginPage3State createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  TextEditingController otpController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController resetEmailController = TextEditingController();

  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPwdController = TextEditingController();

  void _optionDialogBox() async {
    final height = MediaQuery.of(context).size.height;
    final imageSource = await showModalBottomSheet<ImageSource>(
        context: context,
        isScrollControlled: true,
        backgroundColor: Appcolors.blue1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
          ),
        ),
        elevation: 2,
        builder: (builder) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          dense: true,
                          onTap: () => Navigator.pop(context, ImageSource.camera),
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: height * 0.02),
                              ),
                              Icon(Icons.camera,
                                  color: Appcolors.greenlight),
                              Padding(
                                padding: EdgeInsets.only(left: height * 0.02),
                              ),
                              Text(
                                'camera',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          dense: true,
                          onTap: () => Navigator.pop(context, ImageSource.gallery),
                          title: new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: height * 0.02),
                              ),
                              Icon(Icons.sd_storage,
                                  color: Appcolors.greenlight),
                              Padding(
                                padding: EdgeInsets.only(left: height * 0.02),
                              ),
                              Text(
                                "gallery",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))),
          );
        });
    if (imageSource != null) {
      // setState(() {
      //   isloading = true;
      // });
      final file = await ImagePicker.platform.pickImage(source: imageSource);
      if (file != null) {
        setState(() {
          pickedImage = File(file.path);
          print("imagepick:$pickedImage");
          // _image = file;
          // profileImage = _image.path;
          // _updateProfileImage();
        });
      }
      // setState(() {
      //   isloading = false;
      // });
    }
  }

  File pickedImage;
  final picker = ImagePicker();

  SharedPreferences savePreferences;

  final GlobalKey<FormState> _forMKey = GlobalKey<FormState>();

  final GlobalKey<FormState> _forMKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _forMKey2 = GlobalKey<FormState>();
  final GlobalKey<FormState> _forMKey3 = GlobalKey<FormState>();

  String currentUserUid;

  loggedUserIn() async {
    savePreferences = await SharedPreferences.getInstance();
    await savePreferences.setString('uid', currentUserUid);
    await savePreferences.setBool('isLogin', true);
    print(savePreferences.getBool('isLogin'));
    if (rememberMe) {
      savePreferences.setString('userEmail', signInEmailController.text);
      savePreferences.setString('userPassword', signInPwdController.text);
    }
  }

  //SIGN UP METHOD


//SIGN IN METHOD

  showAlertDialogLoginFail(BuildContext context) {
    AlertDialog alert = AlertDialog(
      contentPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: IntrinsicHeight(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Appcolors.blue, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Login Fail', style: Textstyle2Light18.appbartextstyle),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 25,
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Appcolors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.close,
                                  size: 10,
                                  color: Appcolors.blue1),
                            ),
                            SizedBox(width: 2),
                            const Text(
                              'Close',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                color: Appcolors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31),
                Container(
                  height: 145,
                  child: Image.asset("assets/images/verification_fail.png"),
                ),
                SizedBox(height: 17),
                Text('The mobile number or password is incorrect.',
                    style: Textstyle2Light18.appbartextstyle),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                        },
                        child: Text('Try again'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  bool showPassword = false;

  bool loginshowpassword = false;

  bool retypeshowPassword = false;

  String verifyID;

  bool rememberMe = false;

  // void Showdailouge() {
  //   showDialog(
  //       context: context,
  //       barrierDismissible: true,
  //       builder: (context) {
  //         return Container(
  //           child: AlertDialog(
  //             backgroundColor: Appcolors.blue,
  //             content: Center(
  //                 child: CircularProgressIndicator(
  //               valueColor: AlwaysStoppedAnimation<Color>(
  //                   Appcolors.greenlight),
  //             )),
  //           ),
  //         );
  //       });
  // }

  showCountry(BuildContext context) {
    showCountryPicker(
      context: context,
      exclude: <String>['KN', 'MF'],
      showPhoneCode: true,
      onSelect: (Country country) {
        //print('Select country: ${country.displayName}');

        countryController.text = country.phoneCode;

        setState(() {});
      },
      countryListTheme: const CountryListThemeData(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        // Optional. Styles the search field.
        /*inputDecoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Start typing to search',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xFF8C98A8).withOpacity(0.2),
            ),
          ),
        ),*/
      ),
    );
  }

  // showAlertDialogLoginFail(BuildContext context) {
  //   AlertDialog alert = AlertDialog(
  //     contentPadding: EdgeInsets.all(0),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     content: IntrinsicHeight(
  //       child: Container(
  //         width: 300,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10),
  //           border: Border.all(color: Appcolors.blue, width: 2),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
  //           child: Column(
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   Text('Login Fail', style: Textstyle2Light18.appbartextstyle),
  //                   Expanded(child: SizedBox()),
  //                   InkWell(
  //                     onTap: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                     child: Container(
  //                       height: 25,
  //                       child: Row(
  //                         children: [
  //                           Container(
  //                             width: 15,
  //                             height: 15,
  //                             decoration: BoxDecoration(
  //                               color: Appcolors.red,
  //                               borderRadius: BorderRadius.circular(10),
  //                             ),
  //                             child: Icon(Icons.close,
  //                                 size: 10,
  //                                 color: Appcolors.blue1),
  //                           ),
  //                           SizedBox(width: 2),
  //                           const Text(
  //                             'Close',
  //                             style: TextStyle(
  //                               fontSize: 14,
  //                               fontWeight: FontWeight.bold,
  //                               decoration: TextDecoration.underline,
  //                               decorationThickness: 2,
  //                               color: Appcolors.blue,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 31),
  //               Container(
  //                 height: 145,
  //                 child: Image.asset("assets/images/verification_fail.png"),
  //               ),
  //               SizedBox(height: 17),
  //               Text('The mobile number or password is incorrect.',
  //                   style: NewStyles.textValueTextColorR14),
  //               SizedBox(height: 30),
  //               Row(
  //                 children: [
  //                   Expanded(
  //                     child: SimpleElevatedButton(
  //                       onPressed: () async {
  //                         Navigator.of(context).pop();
  //                       },
  //                       buttonName: 'Try again',
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //
  //   showDialog(
  //     barrierDismissible: true,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

  showAlertDialogVerifyReOtpFail(BuildContext context) {
    AlertDialog alert = AlertDialog(
      contentPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: IntrinsicHeight(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Appcolors.blue, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Verification Fail!',
                        style: Textstyle2Light18.appbartextstyle),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 25,
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Appcolors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.close,
                                  size: 10,
                                  color: Appcolors.blue1),
                            ),
                            SizedBox(width: 2),
                            const Text(
                              'Close',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                color: Appcolors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31),
                Container(
                  height: 145,
                  child: Image.asset("assets/images/verification_fail.png"),
                ),
                SizedBox(height: 17),
                Text('Your OTP  Code have expired/Invalid! ',
                    style: Textstyle2Light18.appbartextstyle),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                        },
                        child: Text('try again'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogVerifyFail(BuildContext context) {
    AlertDialog alert = AlertDialog(
      contentPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: IntrinsicHeight(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Appcolors.blue, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Verification Fail!',
                        style: Textstyle2Light18.appbartextstyle),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 25,
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Appcolors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.close,
                                  size: 10,
                                  color: Appcolors.blue1),
                            ),
                            SizedBox(width: 2),
                            const Text(
                              'Close',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                color: Appcolors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31),
                Container(
                  height: 145,
                  child: Image.asset("assets/images/verification_fail.png"),
                ),
                SizedBox(height: 17),
                Text('Your OTP  Code have expired/Invalid! ',
                    style: Textstyle2Light18.appbartextstyle),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          modelBottomSheetOtp();
                        },
                        child: Text('try again'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  ForgotPassword() {
    showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Appcolors.blue, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, updater) {
            return DraggableScrollableSheet(
              initialChildSize: 0.45,
              minChildSize: 0.2,
              maxChildSize: 0.55,
              expand: false,
              builder: (context, controller) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Form(
                    key: _forMKey2,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Forgot your password?',
                                  style: Textstyle2Light18.appbartextstyle),
                              Expanded(child: SizedBox()),
                              InkWell(
                                onTap: () {
                                  print("called");
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 25,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Appcolors.red,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: Icon(Icons.close,
                                            size: 10,
                                            color:
                                            Appcolors.blue1),
                                      ),
                                      SizedBox(width: 2),
                                      const Text(
                                        'Close',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 2,
                                          color: Appcolors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                              'No worries. Just key in the mobile number that is registered with us and we will help you get this sorted out.',
                              style: Textstyle2Light18.appbartextstyle,
                              textAlign: TextAlign.justify),
                          SizedBox(height: 17),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: TextFormField(
                              controller: signInEmailController,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Enter valid Email-Id";
                                }
                                return null;
                              },
                              decoration: Inputdec1.inputDecoration.copyWith(
                                hintText: "Email Address",


                              ),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 17),
                            child: Row(
                              children: [
                                Expanded(
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        if (_forMKey2.currentState.validate()) {
                                          var emailvalidator =
                                          resetEmailController.text.toString();
                                          print(emailvalidator);
                                          Navigator.of(context).pop();
                                          resetEmailController.clear();
                                        }
                                      },
                                      child: Text('Next'),
                                      
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            );
          });
        });
  }

  ResetPassword() {
    showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Appcolors.blue, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, updater) {
            return DraggableScrollableSheet(
              initialChildSize: 0.45,
              minChildSize: 0.2,
              maxChildSize: 0.55,
              expand: false,
              builder: (context, controller) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Reset password',
                                style: Textstyle2Light18.appbartextstyle),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onTap: () {
                                print("called");
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 25,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Appcolors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.close,
                                          size: 10,
                                          color: Appcolors.blue1),
                                    ),
                                    SizedBox(width: 2),
                                    const Text(
                                      'Close',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2,
                                        color: Appcolors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text:
                                " Please enter the 4 digit code sent to:${numberController.text}.",
                                style: Textstyle2Light18.appbartextstyle,
                              ),
                              TextSpan(
                                text: 'Resend Code (15 seconds)',
                                style: Textstyle2Light18.appbartextstyle,
                              )
                            ])),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          child: PinCodeTextField(
                            onChanged: (value) {},

                            autoDisposeControllers: false,
                            controller: otpController,
                            appContext: context,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            length: 6,
                            keyboardType: TextInputType.phone,
                            autoDismissKeyboard: false,
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans-SemiBold',
                            ),
                            backgroundColor: Appcolors.blue,
                            autoFocus: true,
                            enablePinAutofill: true,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(10),
                              fieldHeight: 45,
                              fieldWidth: 45,
                              disabledColor: Colors.black,

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
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 39),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () async {
                                  Navigator.of(context).pop();

                                  // await _auth.signOut();
                                  //SIGN OUT METHOD
                                },
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            "assets/images/back_vector.png",
                                            height: 18),
                                        Text("Back",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'OpenSans-Bold')),
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Appcolors.greenlight,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Appcolors.blue,
                                        width: 2),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    
                                  },
                                  child: Text('Next'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            );
          });
        });
  }

  RegisterNow() {
    showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Appcolors.blue, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return RegisterNow();
          // return StatefulBuilder(builder: (context, updater) {
          //   return DraggableScrollableSheet(
          //     initialChildSize: 0.45,
          //     minChildSize: 0.2,
          //     maxChildSize: 0.55,
          //     expand: false,
          //     builder: (context, controller) => Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 20),
          //
          //     ),
          //   );
          // }

          // );
        });
  }

  showAccountFailSheet() {
    showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Appcolors.blue, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, updater) {
            return DraggableScrollableSheet(
              initialChildSize: 0.50,
              minChildSize: 0.2,
              maxChildSize: 0.60,
              expand: false,
              builder: (context, controller) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Account Creation Fail!',
                                style: Textstyle2Light18.appbartextstyle),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onTap: () {
                                print("called");
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 25,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Appcolors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.close,
                                          size: 10,
                                          color: Appcolors.blue1),
                                    ),
                                    SizedBox(width: 2),
                                    const Text(
                                      'Close',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2,
                                        color: Appcolors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 31),
                        Container(
                          height: 150,
                          child: Image.asset(
                              "assets/images/verification_fail.png"),
                        ),
                        SizedBox(height: 17),
                        Text(
                            'We are sorry for the inconvenience. There might have been some issue that occurred while creating your account.',
                            style: Textstyle2Light18.appbartextstyle,
                            textAlign: TextAlign.justify),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LoginPage3()));
                                },
                                child: Text('Try again'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            );
          });
        });
  }

  showAccountSuccessSheet() {
    showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Appcolors.blue, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, updater) {
            return DraggableScrollableSheet(
              initialChildSize: 0.50,
              minChildSize: 0.2,
              maxChildSize: 0.60,
              expand: false,
              builder: (context, controller) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Account Creation Successful!',
                                style: Textstyle2Light18.appbartextstyle),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onTap: () {
                                print("called");
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 25,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Appcolors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.close,
                                          size: 10,
                                          color: Appcolors.blue1),
                                    ),
                                    SizedBox(width: 2),
                                    const Text(
                                      'Close',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2,
                                        color: Appcolors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 31),
                        Container(
                          height: 150,
                          child: Image.asset(
                              "assets/images/account_successful.png"),
                        ),
                        SizedBox(height: 17),
                        Text(
                            'Your account have been created successfully. You are now one step away from exploring various services around your area!',
                            style: Textstyle2Light18.appbartextstyle,
                            textAlign: TextAlign.justify),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LoginPage3()));
                                },
                                child: Text('Login Now'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            );
          });
        });
  }

  modelBottomSheetOtp() {
    showModalBottomSheet(
        enableDrag: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Appcolors.blue, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, updater) {
            return DraggableScrollableSheet(
              initialChildSize: 0.85,
              minChildSize: 0.2,
              maxChildSize: 0.90,
              expand: false,
              builder: (context, controller) => Padding(
                padding:  EdgeInsets.only(left: 20,right: 20,bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _forMKey3,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Time To Verify!',
                                  style: Textstyle2Light18.appbartextstyle),
                              Expanded(child: SizedBox()),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 25,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Appcolors.red,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Icon(Icons.close,
                                            size: 10,
                                            color: Appcolors.blue1),
                                      ),
                                      SizedBox(width: 2),
                                      const Text(
                                        'Close',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 2,
                                          color: Appcolors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Text(
                                      '1',
                                      style: Textstyle2Light18.appbartextstyle,
                                      textAlign: TextAlign.center,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Appcolors.greenlight,
                                      borderRadius: BorderRadius.circular(60),
                                      border: Border.all(
                                          color: Appcolors.blue,
                                          width: 2),
                                    ),
                                  ),
                                  Text("Users \n Details",
                                      style: Textstyle2Light18.appbartextstyle,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Container(
                                  height: 1,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Appcolors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Text(
                                      '2',
                                      style: Textstyle2Light18.appbartextstyle,
                                      textAlign: TextAlign.center,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Appcolors.greenlight,
                                      borderRadius: BorderRadius.circular(60),
                                      border: Border.all(
                                          color: Appcolors.blue,
                                          width: 2),
                                    ),
                                  ),
                                  Text("Mobile No\n Verification",
                                      style: Textstyle2Light18.appbartextstyle,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 31),
                          Container(
                            height: 145,
                            child: Image.asset("assets/images/time_to_verify.png"),
                          ),
                          SizedBox(height: 17),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:
                                  'Enter the 6 digits code that you was sent to you at ${numberController.text}. ',
                                  style: Textstyle2Light18.appbartextstyle,
                                ),
                                TextSpan(
                                  text: 'Resend Code',
                                  style: Textstyle2Light18.appbartextstyle,
                                )
                              ])),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 12),
                            child: PinCodeTextField(
                              onChanged: (value) {},

                              autoDisposeControllers: false,
                              controller: otpController,
                              appContext: context,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              length: 6,
                              // validator: (value) {
                              //   if(value.length==6){
                              //     return "Enter 6 digits code";
                              //   }
                              //   if (value.isEmpty) {
                              //     return "Enter valid Code";
                              //   }
                              //   return null;
                              // },
                              keyboardType: TextInputType.phone,
                              autoDismissKeyboard: false,
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans-SemiBold',
                              ),
                              backgroundColor: Appcolors.blue,
                              autoFocus: true,
                              enablePinAutofill: true,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(10),
                                fieldHeight: 45,
                                fieldWidth: 45,
                                disabledColor: Colors.black,

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
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 39),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    Navigator.of(context).pop();

                                    // await _auth.signOut();
                                    //SIGN OUT METHOD
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 70,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              "assets/images/back_vector.png",
                                              height: 18),
                                          Text("Back",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'OpenSans-Bold')),
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Appcolors.greenlight,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Appcolors.blue,
                                          width: 2),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text('Submit'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            );
          });
        });
  }

  SharedPreferences _savePreferences;

  String userEmail;
  String password;

  @override
  void initState() {
    // loggedUserIn();
    super.initState();
    // Future.delayed(Duration.zero, () async {
    //   _savePreferences = await SharedPreferences.getInstance();
    //
    //   userEmail = _savePreferences.getString('Email');
    //   password = _savePreferences.getString('Password');
    //
    //   signInEmailController.text = userEmail;
    //   signInPwdController.text = password;
    //
    //   print('Username--> ${userEmail}');
    //   print('Userpass--> ${password}');
    // });
  }

  @override
  Widget build(BuildContext context) {
    FocusNode passwordFocus = FocusNode();

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              key: _forMKey1,
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 20, left: 20, top: 20),
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/welcome_back.png",
                            height: 372,
                            width: width,
                            fit: BoxFit.fill,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                            ),
                            side: BorderSide(
                                width: 2.0,
                                color: Appcolors.blue),
                            fixedSize: Size(50, 25),
                            padding: EdgeInsets.only(
                                top: 0, bottom: 0, right: 0, left: 0),
                            // onPrimary: color ?? Colors.black,
                            primary:
                            Appcolors.blue.withOpacity(0.5),

                          ),
                          onPressed: () => print('pressed'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'BM',
                                style: Textstyle2Light18.appbartextstyle,
                              ),
                              Container(
                                height: 2,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(15.0),
                                  ),
                                  side: BorderSide(
                                      width: 2.0,
                                      color: Appcolors.blue),
                                  fixedSize: Size(50, 25),
                                  padding: EdgeInsets.only(
                                      top: 0, bottom: 0, right: 0, left: 0),
                                  // onPrimary: color ?? Colors.black,
                                  primary: Appcolors.greenlight
                                      .withOpacity(1),
                                ),
                                onPressed: () => print('pressed'),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SKIP',
                                      style: Textstyle2Light18.appbartextstyle,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ))),
                      ],
                    ),
                  ),

                  Text(
                    "Welcome back!",
                    style: Textstyle2Light18.appbartextstyle,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 48, top: 20),
                    child: Row(
                      children: [
                        Text(
                          "Login To Your Account",
                          style: Textstyle2Light18.appbartextstyle,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 51, left: 47),
                    child: TextFormField(
                      controller: signInEmailController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter valid Email-Id";
                        }
                        return null;
                      },
                      decoration: Inputdec1.inputDecoration.copyWith(
                        hintText: "Email Address",
                        
                        
                      ),
                      
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 51, right: 50),
                  //   child: Row(
                  //     children: [
                  //       SizedBox(
                  //         width: 76,
                  //         child: AppInput(
                  //           keyboardType: TextInputType.phone,
                  //           label: "+60",
                  //           angle: 20,
                  //         ),
                  //       ),
                  //       SizedBox(width: 5),
                  //       Expanded(
                  //         child: AppInput(
                  //           textEditingController: signInEmailController,
                  //           keyboardType: TextInputType.phone,
                  //           label: "Contact No",
                  //           angle: 20,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 51, left: 47),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: signInPwdController,
                            decoration: Inputdec3.inputDecoration.copyWith(
                              hintText: "Password",
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      loginshowpassword = !loginshowpassword;
                                    });
                                  },
                                  child: Container(
                                    height: 14,
                                    width: 20,
                                    padding: EdgeInsets.all(14),
                                    child: Image.asset(
                                      loginshowpassword
                                          ? "assets/images/visibility_off.png"
                                          : "assets/images/visibility_on.png",
                                    ),
                                  )
                                // child: Icon(
                                //     showPassword
                                //         ? Icons.visibility_off
                                //         : Icons.visibility,
                                //     color: showPassword
                                //         ? Appcolors.blue
                                //         : Appcolors.lightblue1B3),
                              ),
                            ),
                            
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Enter valid Password";
                              }
                              if (value.length < 7) {
                                return 'Password must be more than 6 Character!';
                              }
                              return null;
                            },

                    

                            obscureText: loginshowpassword,
                            
                            // focusNode: passwordFocus,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 62, right: 51, top: 5),
                    child: Row(
                      children: [
                        InkWell(
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
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Remember me",
                          style: Textstyle2Light18.appbartextstyle,
                          textAlign: TextAlign.center,
                        ),
                        Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () {
                            ForgotPassword();
                          },
                          child: Text(
                            "Forgot Password?",
                            style: Textstyle2Light18.appbartextstyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 55, top: 30, right: 51),
                    child: Row(
                      children: [
                        Text(
                          "Login ",
                          style: Textstyle2Light18.appbartextstyle,
                          textAlign: TextAlign.start,
                        ),
                        Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () async {
                            if (_forMKey1.currentState.validate()) {
                              await signIn(
                                  email: signInEmailController.text,
                                  password: signInPwdController.text);
                              await loggedUserIn();
                            }

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             DashBoardScreen()));
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Image.asset("assets/images/vector.png"),
                            decoration: BoxDecoration(
                              color: Appcolors.greenlight,
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(
                                  color: Appcolors.blue,
                                  width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 10\\),
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 26, left: 26, top: 40),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            decoration: BoxDecoration(
                                color: Appcolors.blue,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Dont have an account with us yet?",
                          style: Textstyle2Light18.appbartextstyle,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            height: 2,
                            decoration: BoxDecoration(
                                color: Appcolors.blue,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                RegisterNow();

                              },
                              child: Text('Register Now'),
                              
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              )),
        ),
      ),
    );
  }

  signIn({String email, String password}) {
    
  }
}