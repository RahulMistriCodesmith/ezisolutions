// ignore_for_file: void_checks

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/barbershop/bookingappoinment.dart';
import 'package:ezisolutions/UI/Home/barbershop/custompackagepage.dart';
import 'package:ezisolutions/UI/Home/barbershop/tipping.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
class PartnerProfilePage extends StatefulWidget {
  const PartnerProfilePage({Key key}) : super(key: key);

  @override
  State<PartnerProfilePage> createState() => _PartnerProfilePageState();
}

class _PartnerProfilePageState extends State<PartnerProfilePage> {

  var selectedval = "services";
  bool jobtype = false;

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  Future<void> shareFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null || result.files.isEmpty) return null;

    await FlutterShare.shareFile(
      title: 'Example share',
      text: 'Example share text',
      filePath: result.files[0] as String,
    );
  }


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
      body: Stack(
        children: [
          SingleChildScrollView(
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
                            child: Icon(Icons.arrow_back,size: 35,)),

                        Expanded(child: SizedBox()),

                        Image.asset('assest/Image/saveimage.png',scale: 3),

                        SizedBox(width: 10,),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.share_outlined,size: 38,color: Appcolors.greenlight,),
                        ),

                      ],
                    ),
                  ),
                ),

                Image.asset('assest/Image/barberimage.png'),

                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Row(

                    children: [
                      Container(
                        width: width*0.7,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.green1,
                        ),
                        child: TextFormField(
                          decoration: Inputdec1.inputDecoration.copyWith(
                            hintText: 'Search for service/ezians',
                          ),
                        ),
                      ),

                      Expanded(child: SizedBox()),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight),
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.green1,
                        ),
                        child: Icon(Icons.search_outlined,size: 50),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,top: 20),
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(color: Appcolors.greenlight,width: 2),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ezi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 25,fontWeight: FontWeight.w600
                                  ),),
                                  Text('Damansara Uptown (4.5 KM)',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w400
                                  ),),
                                  Row(
                                    children: [
                                      Image.asset('assest/Iocns/staricon.png',scale: 4,),
                                      Text('4.8 (571)',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 15,fontWeight: FontWeight.w400
                                      ),),
                                    ],
                                  ),
                                ],
                              ),

                              Expanded(child: SizedBox()),

                              Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Appcolors.green1,
                                  ),
                                  child: Image.asset('assest/Image/locationimage.png',scale: 3,)),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight,width: 2),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: Appcolors.green1,
                          ),
                          child: Row(
                            children: [
                              InkWell(

                                onTap: (){
                                  setState(() {
                                    selectedval = "services";
                                  });
                                },

                                child: Text('Services',style: selectedval == "services" ? Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight)
                                    :
                                Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w400,
                                ),
                                ),
                              ),

                              Expanded(child: SizedBox()),

                              InkWell(

                                onTap: (){
                                  setState(() {
                                    selectedval = "gallery";
                                  });
                                },

                                child: Text('Gallery',style: selectedval == "gallery" ? Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight)
                                    :
                                Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w400,
                                ),
                                ),
                              ),

                              Expanded(child: SizedBox()),

                              InkWell(

                                onTap: (){
                                  setState(() {
                                    selectedval = "review";
                                  });
                                },

                                child: Text('Review',style: selectedval == "review" ? Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight)
                                    :
                                Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w400,
                                ),
                                ),
                              ),

                              Expanded(child: SizedBox()),

                              InkWell(

                                onTap: (){
                                  setState(() {
                                    selectedval = "ezians";
                                  });
                                },

                                child: Text('EZians',style: selectedval == "ezians" ? Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight)
                                    :
                                Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w400,
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

                selectedval == "services"
                ?
                    Column(
                      children: [
                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(top: 15,bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
                                child: Text('Recent Bookings',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w600,
                                ),),
                              ),

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Appcolors.greenlight,width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Cut + Shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w600,
                                                ),),

                                                SizedBox(width: width*0.08),

                                                Text('30 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 10,fontWeight: FontWeight.w400,
                                                ),),

                                              ],
                                            ),
                                            Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),

                                            SizedBox(height: 10),

                                            Row(
                                              children: [

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('20 May 2021,',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 10,fontWeight: FontWeight.w400,
                                                    ),),
                                                    Text('01:10 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 10,fontWeight: FontWeight.w400,
                                                    ),),
                                                  ],
                                                ),

                                                SizedBox(width: width*0.15,),

                                                Image.asset('assest/Image/infoimage.png',scale: 4,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 20),

                                      GestureDetector(

                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPackagePage()));
                                        },

                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all(color: Appcolors.greenlight,width: 2),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('Custom Pack...',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 15,fontWeight: FontWeight.w600,
                                                  ),),

                                                  SizedBox(width: width*0.07),

                                                  Text('90 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w400,
                                                  ),),

                                                ],
                                              ),
                                              Text('RM 150',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 15,fontWeight: FontWeight.w400,
                                              ),),

                                              SizedBox(height: 10),

                                              Row(
                                                children: [

                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('18 May 2021,',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 10,fontWeight: FontWeight.w400,
                                                      ),),
                                                      Text('03:30 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                        fontSize: 10,fontWeight: FontWeight.w400,
                                                      ),),
                                                    ],
                                                  ),

                                                  SizedBox(width: width*0.18,),

                                                  Image.asset('assest/Image/infoimage.png',scale: 4,),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 20),

                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Appcolors.greenlight,width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Cut + Shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 15,fontWeight: FontWeight.w600,
                                                ),),

                                                SizedBox(width: width*0.08),

                                                Text('30 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 10,fontWeight: FontWeight.w400,
                                                ),),

                                              ],
                                            ),
                                            Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),

                                            SizedBox(height: 10),

                                            Row(
                                              children: [

                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('20 May 2021,',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 10,fontWeight: FontWeight.w400,
                                                    ),),
                                                    Text('01:10 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 10,fontWeight: FontWeight.w400,
                                                    ),),
                                                  ],
                                                ),

                                                SizedBox(width: width*0.15,),

                                                Image.asset('assest/Image/infoimage.png',scale: 4,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(top: 15,bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Appcolors.greenlight,width: 2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
                                child: Text('Package Offers',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w600,
                                ),),
                              ),

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Appcolors.greenlight,width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Cut + Shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,
                                            ),),
                                            Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),

                                            Row(
                                              children: [

                                                Text('30 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 10,fontWeight: FontWeight.w400,
                                                ),),

                                                SizedBox(width: width*0.15,),

                                                Image.asset('assest/Iocns/addicon.png',scale: 4,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 20),

                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Appcolors.greenlight,width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('School Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,
                                            ),),
                                            Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),

                                            Row(
                                              children: [

                                                Text('30 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 10,fontWeight: FontWeight.w400,
                                                ),),

                                                SizedBox(width: width*0.15,),

                                                Image.asset('assest/Iocns/addicon.png',scale: 4,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 20),

                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Appcolors.greenlight,width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Box Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w600,
                                            ),),
                                            Text('RM 15',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 15,fontWeight: FontWeight.w400,
                                            ),),

                                            Row(
                                              children: [

                                                Text('30 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 10,fontWeight: FontWeight.w400,
                                                ),),

                                                SizedBox(width: width*0.15,),

                                                Image.asset('assest/Iocns/addicon.png',scale: 4,),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        GestureDetector(

                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPackagePage()));
                          },

                          child: Container(
                            padding: EdgeInsets.only(top: 15,bottom: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Appcolors.greenlight)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [
                                      Text('Custom Package ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),
                                      Expanded(
                                        child: Text('(Best Seller - Special Discount)',style: Textstyle2Light18.appbartextstyle.copyWith(
                                          fontSize: 10,fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.justify,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Appcolors.greenlight,width: 2)
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Readymade Package',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 16,fontWeight: FontWeight.w600,
                                            ),),

                                            Text('* Home cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 13,fontWeight: FontWeight.w400,
                                            ),),

                                            Text('* Men short hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 13,fontWeight: FontWeight.w400,
                                            ),),

                                            Text('* Clean shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 13,fontWeight: FontWeight.w400,
                                            ),),

                                            Text('* 10 min head massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 13,fontWeight: FontWeight.w400,
                                            ),),

                                          ],
                                        ),

                                        Expanded(child: SizedBox()),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('RM25 RM20',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 16,fontWeight: FontWeight.w600,
                                            ),),

                                            Text('Estimate 60 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 13,fontWeight: FontWeight.w400,
                                            ),),

                                            SizedBox(height: height*0.025,),

                                            Row(
                                              children: [
                                                Image.asset('assest/Iocns/editicon.png',scale: 4,),
                                                SizedBox(width: width*0.1,),
                                                Image.asset('assest/Iocns/addicon.png',scale: 4,),
                                              ],
                                            ),

                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('All Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w600,
                              ),),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Appcolors.greenlight,width: 2),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),

                                          SizedBox(height: 10),

                                          Image.asset('assest/Image/tolderimage.png',scale: 5),

                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 15,fontWeight: FontWeight.w600,
                                                  ),),
                                                  Text('15 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w400,
                                                  ),),
                                                ],
                                              ),

                                              SizedBox(width: width*0.12),

                                              GestureDetector(

                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingAppoinment()));
                                                  },

                                                  child: Image.asset('assest/Iocns/addicon.png',scale: 5,)),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),

                                    Expanded(child: SizedBox()),

                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Appcolors.greenlight,width: 2),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),

                                          SizedBox(height: 10),

                                          Image.asset('assest/Image/tipimage.png',scale: 4.9),
                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 15,fontWeight: FontWeight.w600,
                                                  ),),
                                                  Text('15 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w400,
                                                  ),),
                                                ],
                                              ),

                                              SizedBox(width: width*0.11,),

                                              Image.asset('assest/Iocns/addicon.png',scale: 5),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),




                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Appcolors.greenlight,width: 2),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),

                                          SizedBox(height: 10),

                                          Image.asset('assest/Image/tolderimage.png',scale: 5),

                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 15,fontWeight: FontWeight.w600,
                                                  ),),
                                                  Text('15 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w400,
                                                  ),),
                                                ],
                                              ),

                                              SizedBox(width: width*0.12),

                                              GestureDetector(

                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingAppoinment()));
                                                  },

                                                  child: Image.asset('assest/Iocns/addicon.png',scale: 5,)),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),

                                    Expanded(child: SizedBox()),

                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Appcolors.greenlight,width: 2),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                            fontSize: 15,fontWeight: FontWeight.w600,
                                          ),),

                                          SizedBox(height: 10),

                                          Image.asset('assest/Image/tipimage.png',scale: 4.9),
                                          SizedBox(height: 15),

                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('RM 10',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 15,fontWeight: FontWeight.w600,
                                                  ),),
                                                  Text('15 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w400,
                                                  ),),
                                                ],
                                              ),

                                              SizedBox(width: width*0.11,),

                                              Image.asset('assest/Iocns/addicon.png',scale: 5),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),




                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 20),
                      ],
                    )
                :
                    SizedBox(),

                selectedval == "gallery"
                ?
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                          child: Row(
                            children: [
                              Text('All Images',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w600,
                              ),),
                              Text('(1500)',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 12,fontWeight: FontWeight.w600,color: Appcolors.greenlight
                              ),),
                            ],
                          ),
                        ),

                        ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(bottom: 10),
                          itemCount: stocksList.length,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                             return Container(
                                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                width: width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color:
                                        Appcolors.greenlight,
                                        width: 2)),
                                child: Row(
                                  children: [

                                    GestureDetector(
                                        onTap: (){
                                          return showDialog(
                                            context: context,
                                            builder: (ctx) => Dialog(
                                              child: Image.asset(stocksList[index].image1,),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          stocksList[index].image1,
                                          scale: 4.5,),),

                                    Expanded(
                                        child: Padding(
                                          padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text(
                                                stocksList[index].name,
                                                style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 18,fontWeight: FontWeight.w600
                                                ),

                                              ),

                                              SizedBox(height: 2),

                                              Text(
                                                stocksList[index].price,
                                                style:
                                                Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 14,fontWeight: FontWeight.w400
                                                ),
                                                textAlign: TextAlign.justify,
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                              ),

                                              SizedBox(height: 20,),

                                              Row(
                                                children: [
                                                  Expanded(child: SizedBox()),
                                                  InkWell(

                                                    onTap: (){
                                                      share();
                                                    },

                                                    child: Image.asset(
                                                      stocksList[index].image2,
                                                      scale: 4.5,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              );
                            },
                        ),

                      ],
                    )
                    :
                    SizedBox(),

                selectedval == "review"
                    ?
                Column(
                  children: [
                    
                    SizedBox(height: 20),
                    
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Appcolors.greenlight,width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            jobtype = !jobtype;
                          });

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Rating',style: Textstyle2Light18.appbartextstyle.copyWith(
                                color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                            ),),
                            Expanded(child: SizedBox()),
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Appcolors.greenlight,width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.arrow_drop_down,color: Appcolors.greenlight,)),
                          ],
                        ),
                      ),
                    ),

                    jobtype == true

                        ?
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Appcolors.greenlight,width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,top: 20),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 42,right: 42),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Appcolors.green1,
                                  ),
                                  child: Text('All',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w600
                                  ),),
                                ),

                                Expanded(child: SizedBox()),

                                Container(
                                  padding: EdgeInsets.only(top: 18,bottom: 18,left: 40,right: 40),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset('assest/Iocns/staricon.png',scale: 2.5,),
                                ),

                                Expanded(child: SizedBox()),

                                Container(
                                  padding: EdgeInsets.only(top: 18,bottom: 18,left: 33,right: 33),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset('assest/Image/2star.png',scale: 5,),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 9,right: 9,top: 15),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 26,right: 26),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset('assest/Image/3star.png',scale: 5,),
                                ),

                                Expanded(child: SizedBox()),

                                Container(
                                  padding: EdgeInsets.only(top: 11,bottom: 11,left: 30,right: 30),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset('assest/Image/4star.png',scale: 4,),
                                ),

                                Expanded(child: SizedBox()),

                                Container(
                                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Appcolors.greenlight,width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset('assest/Image/5star.png',scale: 5,),
                                ),
                              ],
                            ),
                          ),
                          

                        ],
                      ),
                    )
                        :
                    SizedBox(height: 20),

                    ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(bottom: 10),
                        itemCount: 5,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            width: width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color:
                                    Appcolors.greenlight,
                                    width: 2)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assest/Image/userimage.png",
                                    scale: 4.5,
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 4),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Users name",
                                                style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 18,fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              Text(
                                                "(6 hours ago)",
                                                style:Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w300
                                                ),
                                              ),

                                              Expanded(child: SizedBox()),

                                              Text(
                                                "5",
                                                style:Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 12,fontWeight: FontWeight.w600
                                                ),
                                              ),

                                              Image.asset('assest/Iocns/staricon3.png',scale: 7,),

                                            ],
                                          ),

                                          SizedBox(height: 2),

                                          Text(
                                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                            style:
                                            Textstyle2Light18.appbartextstyle.copyWith(
                                                fontSize: 12,fontWeight: FontWeight.w400
                                            ),
                                            textAlign: TextAlign.justify,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),

                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          );
                        }),

                    SizedBox(height: 20),

                  ],
                )
                    :
                SizedBox(),

                selectedval == "ezians"
                    ?
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight,width: 2),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Text('Get to know more about EZi Barber employees. Well at the same time if you’re feeling generous you can always tip them. Just saying! It is always good to spare some for those who work for it.',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w400
                        ),),
                      ),
                      
                      SizedBox(height: 15),

                      ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(bottom: 10),
                          itemCount: 5,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              width: width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color:
                                      Appcolors.greenlight,
                                      width: 2)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset('assest/Image/tipimage.png',scale: 3.7,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 50,top: 10,),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Appcolors.green1,
                                                ),
                                                child: Text('Vacinated',style: Textstyle2Light18.appbartextstyle.copyWith(
                                                    fontSize: 10,fontWeight: FontWeight.w600
                                                ),),
                                              ),
                                            ),

                                          ],
                                        ),

                                        SizedBox(height: 5,),

                                        Text(
                                          "John Martin",
                                          style: Textstyle2Light18.appbartextstyle.copyWith(
                                              fontSize: 12,fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Experiance",
                                                  style: Textstyle2Light18.appbartextstyle.copyWith(
                                                      fontSize: 18,fontWeight: FontWeight.w600
                                                  ),
                                                ),

                                                Expanded(child: SizedBox()),

                                                Image.asset('assest/Image/saveimage.png',scale: 4,),

                                              ],
                                            ),

                                            Text(
                                              "5 Years 10 Months",
                                              style:
                                              Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 12,fontWeight: FontWeight.w400
                                              ),
                                              textAlign: TextAlign.justify,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),

                                            SizedBox(height: 15),

                                            Text(
                                              "About John",
                                              style: Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 18,fontWeight: FontWeight.w600
                                              ),
                                              textAlign: TextAlign.justify,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                              style:
                                              Textstyle2Light18.appbartextstyle.copyWith(
                                                  fontSize: 12,fontWeight: FontWeight.w400
                                              ),
                                              textAlign: TextAlign.justify,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),

                                            SizedBox(height: 10,),

                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [

                                                Expanded(child: SizedBox()),

                                                InkWell(
                                                  
                                                  onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tipping()));
                                                  },
                                                  
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                                    decoration: BoxDecoration(
                                                        color: Appcolors.green1,
                                                        borderRadius: BorderRadius.circular(15),
                                                        border: Border.all(
                                                            color:
                                                            Appcolors.greenlight,
                                                            width: 2)),
                                                    child: Row(
                                                      children: [

                                                        Image.asset('assest/Image/tipimage1.png',scale: 4),
                                                        
                                                        SizedBox(width: 5,),

                                                        Text(
                                                          "Tip EZian",
                                                          style:Textstyle2Light18.appbartextstyle.copyWith(
                                                              fontSize: 15,fontWeight: FontWeight.w400
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }),

                    ],
                  ),
                )
                    :
                SizedBox(),

              ],
            ),



          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 760),
            child: Container(
              padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
                color: Appcolors.green1,
              ),
              child: Row(
                children: [
                  Text('Cart (2)',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w700,fontSize: 20
                  ),),
                  Expanded(child: SizedBox()),
                  Text('RM 55',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w700,fontSize: 20
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  List stocksList = [
    CompanyStocks(image2: "assest/Iocns/shareicon.png",image1: "assest/Image/quote1.png",name: "Quote", price: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci lli. consectetur, adisci elit. dipisci veli consectetur, "),
    CompanyStocks(image2: "assest/Iocns/shareicon.png",image1: "assest/Image/quote2.png",name: "Quote", price: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci lli. consectetur, adisci elit. dipisci veli consectetur, "),
    CompanyStocks(image2: "assest/Iocns/shareicon.png",image1: "assest/Image/quote1.png",name: "Quote", price: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci lli. consectetur, adisci elit. dipisci veli consectetur, "),
    CompanyStocks(image2: "assest/Iocns/shareicon.png",image1: "assest/Image/quote2.png",name: "Quote",price: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci lli. consectetur, adisci elit. dipisci veli consectetur, "),
    CompanyStocks(image2: "assest/Iocns/shareicon.png",image1: "assest/Image/quote2.png",name: "Quote", price: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci lli. consectetur, adisci elit. dipisci veli consectetur, "),
  ];
}
