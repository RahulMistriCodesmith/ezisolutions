import 'dart:io';

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  File imageFile;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.background,
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
                      width: width*0.3,
                    ),

                    Text('My Profile',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Text('Basic Info',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            SizedBox(height: height*0.05,),

            Center(
              child: ClipRRect(
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

                      ? Image.asset('assest/Image/profileimage.png',scale: 2,)

                      : Image.file(

                    imageFile,

                    fit: BoxFit.cover,

                  ),

                ),
              ),
            ),

            SizedBox(height: 10,),

            InkWell(

              onTap: (){
                _getFromGallery();
              },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Change Profile Image',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 18,color: Appcolors.greenlight
                  ),),
                  Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assest/Iocns/nameicon.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Your Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 60,vertical: 7),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Appcolors.greenlight),
              ),
              child: Row(
                children: [
                  Text('John Smith',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  ),),

                  Expanded(child: SizedBox()),

                  Image.asset('assest/Image/pen.png',scale: 5,),
                ],
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assest/Iocns/smartphone.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Your Contact No',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assest/Iocns/emailicon.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Your Email',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 60,vertical: 7),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Appcolors.greenlight),
              ),
              child: Row(
                children: [
                  Text('test@gmail.com',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  ),),

                  Expanded(child: SizedBox()),

                  Image.asset('assest/Image/pen.png',scale: 5,),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assest/Iocns/passwordicon.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Password',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 60,vertical: 7),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Appcolors.greenlight),
              ),
              child: Row(
                children: [
                  Text('***************',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  ),),

                  Expanded(child: SizedBox()),

                  Image.asset('assest/Image/pen.png',scale: 5,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Text('Additional Info',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
              ),),
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
