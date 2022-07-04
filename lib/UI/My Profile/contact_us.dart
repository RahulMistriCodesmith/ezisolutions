import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(
                      width: width*0.25,
                    ),

                    Text('Contact Us',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            SizedBox(height: height*0.04,),

            Center(
              child: Text('Get In Touch With Us Today!',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            SizedBox(height: height*0.02,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Iocns/facebook.png',scale: 5,),

                  SizedBox(width: width*0.08,),

                  Text('Check us out at Facebook',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),
                  overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: height*0.02,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Iocns/instagram.png',scale: 5,),

                  SizedBox(width: width*0.08,),

                  Text('Follow our Instagram',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 16
                  ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: height*0.02,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [

                  SizedBox(width: width*0.19,),

                  Expanded(
                    child: Text('Be apart of EZi community on Telegram',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 16
                    ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: height*0.02,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Iocns/whatsapp.png',scale: 5,),

                  SizedBox(width: width*0.08,),

                  Expanded(
                    child: Text('Connect with us personally on Whatsapp',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 16
                    ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Reach out to us  through',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 16
                    ),),
                  ),
                  Center(
                    child: Text('Contact Us form',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 16
                    ),),
                  ),

                  SizedBox(height: 10,),

                  Text('Your Email',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 15
                  ),),

                  Container(
                    width: width*0.8,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('johndoe@test.com',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 15
                    ),),
                  ),

                  SizedBox(height: 10,),

                  Text('Message',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 15
                  ),),

                  SizedBox(height: 10,),

                  TextFormField(
                    maxLines: 5,
                    decoration: Inputdec3.inputDecoration.copyWith(
                      hintText: 'Type Your Troubles or Issues Here',
                    ),
                  ),

                  SizedBox(height: 10,),

                  Center(
                    child: Container(
                      width: width*0.9,
                      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Submit',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w600,fontSize: 20
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
    );
  }
}
