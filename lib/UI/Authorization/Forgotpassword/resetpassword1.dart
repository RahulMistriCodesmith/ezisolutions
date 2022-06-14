import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Login/mainloginpage.dart';
import 'package:ezisolutions/UI/Authorization/Login/mainloginpage2.dart';
import 'package:flutter/material.dart';
class ResetPassword1 extends StatefulWidget {
  const ResetPassword1({Key key}) : super(key: key);

  @override
  State<ResetPassword1> createState() => _ResetPassword1State();
}

class _ResetPassword1State extends State<ResetPassword1> {
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
                                Text('Close',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 10,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                                ),),
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
