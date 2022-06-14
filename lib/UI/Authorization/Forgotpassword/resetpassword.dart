import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Forgotpassword/resetpassword1.dart';
import 'package:flutter/material.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({Key key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure = false;
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
                                Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                ),),
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword1()));
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
