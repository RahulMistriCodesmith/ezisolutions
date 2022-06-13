// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
class MainLoginPage2 extends StatefulWidget {
  const MainLoginPage2({Key key}) : super(key: key);

  @override
  State<MainLoginPage2> createState() => _MainLoginPage2State();
}

class _MainLoginPage2State extends State<MainLoginPage2> {

  bool isSwitched = false;
  bool _isObscure = false;
  final _formKey = GlobalKey<FormState>();
  var selectedval = "student";
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                      Container(
                        width: width*0.15,
                        height: height*0.06,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('+61',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 26,color: Colors.grey),)),
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
                        onPressed: (){},

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
                            if (_formKey.currentState.validate()) {

                            }

                          });
                        },

                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(100),
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
                      color: Appcolors.green1.withOpacity(0.5),
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
                          showModalBottomSheet<void>(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            barrierColor: Appcolors.grey,
                            context: context,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
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
                                          TextButton(
                                            child: Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                            ),),
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },

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
                                            Column(
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
                                ),
                              );
                            },
                          );
                        }),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
