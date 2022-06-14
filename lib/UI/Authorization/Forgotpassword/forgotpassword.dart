// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:country_picker/country_picker.dart';
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Forgotpassword/forgotpassword1.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 26,right: 26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
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
                                Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                ),),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword1()));
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
