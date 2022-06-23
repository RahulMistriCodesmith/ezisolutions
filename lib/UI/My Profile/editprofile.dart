// ignore_for_file: deprecated_member_use, void_checks

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

            Row(
              children: [

                Container(
                  margin: EdgeInsets.only(left: 65),
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.green1),
                  ),
                  child: Text('+60',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                  ),),
                ),

                Container(
                  width: width*0.54,
                  margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
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
              ],
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
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
              child: Text('Additional Info',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
              ),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset('assest/Iocns/idcard.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Identification No',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 8,),

            Row(
              children: [

                Container(
                  margin: EdgeInsets.only(left: 65),
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.greenlight),
                  ),
                  child: Text('951210',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15,
                  ),),
                ),

                Expanded(child: SizedBox()),

                Text('-',style: TextStyle(fontSize: 20),),

                Expanded(child: SizedBox()),

                Container(

                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.greenlight),
                  ),
                  child: Text('13',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  ),),
                ),

                Expanded(child: SizedBox()),

                Text('-',style: TextStyle(fontSize: 20),),

                Expanded(child: SizedBox()),

                Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.greenlight),
                  ),
                  child: Text('5117',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  ),),
                ),

                Expanded(child: SizedBox()),

                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 60),
                  child: Image.asset('assest/Image/pen.png',scale: 5,),
                ),

              ],
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset('assest/Iocns/birthdayicon.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Birthday',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 8,),

            Row(
              children: [

                Container(
                  margin: EdgeInsets.only(left: 65),
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Appcolors.background,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.green1),
                  ),
                  child: Text('10',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                  ),),
                ),

                Expanded(child: SizedBox()),

                Container(

                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Appcolors.background,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.green1),
                  ),
                  child: Text('December',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                  ),),
                ),

                Expanded(child: SizedBox()),

                Container(

                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Appcolors.background,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Appcolors.green1),
                  ),
                  child: Text('1995',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                  ),),
                ),

                SizedBox(width: width*0.27,),

              ],
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset('assest/Iocns/gender.png',scale: 5,),

                  SizedBox(width: 10),

                  Text('Gender',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 8,),

            Container(
              margin: EdgeInsets.only(left: 65,right: 40,bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              decoration: BoxDecoration(
                color: Appcolors.background,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Appcolors.green1),
              ),
              child: Row(
                children: [
                  Text('Male',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.greenlight
                  ),),
                  Expanded(child: SizedBox()),
                  Text('Female',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w400,fontSize: 15,color: Appcolors.background
                  ),),
                ],
              ),
            ),
            
            GestureDetector(

              onTap: (){
                return showDialog(
                  context: context,
                  builder: (ctx) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 15),
                      child: Container(
                        width: width*0.2,
                        height: height*0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Delete My Account!',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 20,
                            ),),

                            Expanded(child: SizedBox()),

                            Center(
                              child: Image.asset('assest/Image/deleteaccount.png',scale: 5,),
                            ),

                            Expanded(child: SizedBox()),

                            Text('Are you sure you want to delete your account?',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),

                            Expanded(child: SizedBox()),

                            RichText(
                              text: TextSpan(
                                text: 'Note: ',
                                style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'All your information will be deleted from our databases after 7 days only. During that period your login credentials will be suspended. There is no way to undo this action once you have done it.',
                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(child: SizedBox()),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(

                                  onTap: (){
                                    return showDialog(
                                      context: context,
                                      builder: (ctx) => Dialog(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 15),
                                          child: Container(
                                            width: width*0.2,
                                            height: height*0.65,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Why Delete Account?',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontWeight: FontWeight.w600,fontSize: 20,
                                                ),),

                                                Expanded(child: SizedBox()),

                                                Center(child: Image.asset('assest/Image/deleteaccount1.png',scale: 5,)),

                                                Expanded(child: SizedBox()),

                                                Text('Why do you want to delete your account?',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontWeight: FontWeight.w400,fontSize: 18,
                                                ),),

                                                Expanded(child: SizedBox()),

                                                RichText(
                                                  text: TextSpan(
                                                    text: 'Remarks: ',
                                                    style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: 'Your honest feedback will be used to improve how we do things.',
                                                        style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Expanded(child: SizedBox()),

                                                Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(color: Appcolors.greenlight),
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Colors.white
                                                  ),
                                                  child: TextField(
                                                    maxLines: 6,
                                                    decoration: Inputdec1.inputDecoration.copyWith(
                                                      hintText: 'Remarks*',
                                                    ),
                                                  ),
                                                ),

                                                Expanded(child: SizedBox()),

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    GestureDetector(

                                                      onTap: (){
                                                        return showDialog(
                                                          context: context,
                                                          builder: (ctx) => Dialog(
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 15),
                                                              child: Container(
                                                                padding: const EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 10),
                                                                width: width*0.2,
                                                                height: height*0.5,
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Text('Farewell...',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                      fontWeight: FontWeight.w600,fontSize: 20,
                                                                    ),),

                                                                    Expanded(child: SizedBox()),

                                                                    Center(child: Image.asset('assest/Image/farewell.png',scale: 5,)),

                                                                    Expanded(child: SizedBox()),

                                                                    Text('It’s never EZi to watch you go, but we hope to cross path again! We will always be here for you. Thank you for using our service John Smith, you’re awesome.',
                                                                      style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                        fontWeight: FontWeight.w400,fontSize: 12,
                                                                      ),),

                                                                    Expanded(child: SizedBox()),

                                                                    Text('Sincerely,',
                                                                      style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                        fontWeight: FontWeight.w400,fontSize: 12,
                                                                      ),),
                                                                    Text('EZi Team',
                                                                      style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                        fontWeight: FontWeight.w400,fontSize: 12,
                                                                      ),),

                                                                    Container(
                                                                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                                                      margin: EdgeInsets.only(top: 20),
                                                                      decoration: BoxDecoration(
                                                                      color: Appcolors.green1,
                                                                      border: Border.all(color: Appcolors.greenlight),
                                                                      borderRadius: BorderRadius.circular(10),
                                                                    ),
                                                                      child: Center(
                                                                        child: Text('Submit',
                                                                          style: Textstyle2Light18.appbartextstyle.copyWith(
                                                                            fontWeight: FontWeight.w600,fontSize: 20,
                                                                          ),),
                                                                      ),
                                                                    ),

                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },

                                                      child: Container(
                                                        width: width*0.2,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                          color: Appcolors.green1,
                                                          border: Border.all(color: Appcolors.greenlight),
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text('Yes',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 20,fontWeight: FontWeight.w600,
                                                          ),),
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(width: 30,),

                                                    InkWell(

                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },

                                                      child: Container(
                                                        width: width*0.2,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                          color: Appcolors.green1,
                                                          border: Border.all(color: Appcolors.greenlight),
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text('No',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                            fontSize: 20,fontWeight: FontWeight.w600,
                                                          ),),
                                                        ),
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
                                  },

                                  child: Container(
                                    width: width*0.2,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text('YES',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 20,fontWeight: FontWeight.w600,
                                      ),),
                                    ),
                                  ),
                                ),

                                SizedBox(width: 30,),

                                InkWell(

                                  onTap: (){
                                    Navigator.pop(context);
                                  },

                                  child: Container(
                                    width: width*0.2,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      border: Border.all(color: Appcolors.greenlight),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text('NO',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 20,fontWeight: FontWeight.w600,
                                      ),),
                                    ),
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
              },


              child: Container(
                margin: EdgeInsets.only(left: 25,right: 25,bottom: 20),
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Appcolors.green1,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assest/Iocns/delete.png',scale: 5,),

                    SizedBox(width: 10,),

                    Text('Delete My Account',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 20,color: Appcolors.greenlight
                    ),),
                  ],
                ),
              ),
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
