// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key key}) : super(key: key);

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {

  bool isSwitched = false;
  bool _isObscure = true;

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
                  // padding: EdgeInsets.only(left: 5),
                  width: width*0.78,
                  height: height*0.06,
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.greenlight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    obscureText: _isObscure,
                    textAlign: TextAlign.center,
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
                          fontSize: 10,fontWeight: FontWeight.w400,decoration: TextDecoration.underline
                      ),),
                      onPressed: (){},

                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 56,right: 51),
                child: Container(
                  width: width*0.78,
                  height: height*0.06,
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.greenlight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
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
                      SizedBox(width: 20,),
                      Text('Slide To Login',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600,
                      ),),
                    ],
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
