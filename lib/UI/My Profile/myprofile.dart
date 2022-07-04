import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Login/mainloginpage.dart';
import 'package:ezisolutions/UI/My%20Profile/address.dart';
import 'package:ezisolutions/UI/My%20Profile/contact_us.dart';
import 'package:ezisolutions/UI/My%20Profile/editprofile.dart';
import 'package:ezisolutions/UI/My%20Profile/helpcenter.dart';
import 'package:ezisolutions/UI/My%20Profile/savecard.dart';
import 'package:flutter/material.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 30,)),

                    SizedBox(
                      width: width*0.3,
                    ),

                    Text('My Profile',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                      offset: const Offset(
                        2.0,
                        4.0,
                      ),
                    blurRadius: 10,
                    spreadRadius: 0.2
                  ),
                ],
                  border: Border.all(color: Appcolors.greenlight,width: 1),
                  color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5,right: 20),
                child: Row(
                  children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Member Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                           fontWeight: FontWeight.w600,fontSize: 18
                       ),),

                       SizedBox(height: 10),

                       Text('John Smith',style: Textstyle2Light18.appbartextstyle.copyWith(
                           fontWeight: FontWeight.w400,fontSize: 13
                       ),),

                       Text('+60 12-3334444',style: Textstyle2Light18.appbartextstyle.copyWith(
                           fontWeight: FontWeight.w400,fontSize: 13
                       ),),
                     ],
                   ),

                    Expanded(child: SizedBox()),

                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                        },
                        child: Image.asset('assest/Image/pen.png',scale: 5,)),

                  ],
                ),
              ),
            ),

            SizedBox(height: 25),

            GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SaveAddress()));
              },

              child: Container(
                padding: EdgeInsets.only(left: 10,right: 3,top: 5,bottom: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.greenlight),
                    color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    ImageIcon(AssetImage('assest/Iocns/locationicon.png'),size: 30,color: Appcolors.greenlight,),

                    SizedBox(width: width*0.02,),

                    Text('Saved Addresses',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                    Expanded(child: SizedBox()),

                    Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.greenlight.withOpacity(0.3),size: 18),

                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SaveCards()));
              },

              child: Container(
                padding: EdgeInsets.only(left: 10,right: 3,top: 5,bottom: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    ImageIcon(AssetImage('assest/Iocns/cardicon.png'),size: 35,color: Appcolors.greenlight,),

                    SizedBox(width: width*0.02,),

                    Text('Save Cards',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                    Expanded(child: SizedBox()),

                    Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.greenlight.withOpacity(0.3),size: 18),

                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
              },

              child: Container(
                padding: EdgeInsets.only(left: 10,right: 3,top: 5,bottom: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    ImageIcon(AssetImage('assest/Iocns/contacticon.png'),size: 30,color: Appcolors.greenlight,),

                    SizedBox(width: width*0.02,),

                    Text('Contact Us',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                    Expanded(child: SizedBox()),

                    Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.greenlight.withOpacity(0.3),size: 18),

                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HelpCenter()));
              },

              child: Container(
                padding: EdgeInsets.only(left: 10,right: 3,top: 5,bottom: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Appcolors.green1,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    ImageIcon(AssetImage('assest/Iocns/helpicon.png'),size: 30,color: Appcolors.greenlight,),

                    SizedBox(width: width*0.02,),

                    Text('Help Center',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                    Expanded(child: SizedBox()),

                    Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.greenlight.withOpacity(0.3),size: 18),

                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            Container(
              padding: EdgeInsets.only(left: 10,right: 3,top: 5,bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                color: Appcolors.green1,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  ImageIcon(AssetImage('assest/Iocns/conditionicon.png'),size: 30,color: Appcolors.greenlight,),

                  SizedBox(width: width*0.02,),

                  Text('Terms & Condition',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 18
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.greenlight.withOpacity(0.3),size: 18),

                ],
              ),
            ),

            SizedBox(height: 15),

            Container(
              padding: EdgeInsets.only(left: 10,right: 3,top: 5,bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                color: Appcolors.green1,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  ImageIcon(AssetImage('assest/Iocns/privacyicon.png'),size: 30,color: Appcolors.greenlight,),

                  SizedBox(width: width*0.02,),

                  Text('Privacy Policy',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 18
                  ),),

                  Expanded(child: SizedBox()),

                  Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.greenlight.withOpacity(0.3),size: 18),

                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainLoginPage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(5),
                  color: Appcolors.green1
                ),
                child: Center(
                  child: Text('LOGOUT',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 18,color: Appcolors.greenlight
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
