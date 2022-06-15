import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Booking/bookingappoinment.dart';
import 'package:ezisolutions/UI/Booking/custompackagepage.dart';
import 'package:flutter/material.dart';
class PartnerProfilePage extends StatefulWidget {
  const PartnerProfilePage({Key key}) : super(key: key);

  @override
  State<PartnerProfilePage> createState() => _PartnerProfilePageState();
}

class _PartnerProfilePageState extends State<PartnerProfilePage> {
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
                        width: width*0.75,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight),
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolors.green1,
                        ),
                        child: TextFormField(
                          decoration: Inputdec3.inputDecoration.copyWith(
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
                      border: Border.all(color: Appcolors.greenlight),
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
                                    border: Border.all(color: Appcolors.greenlight),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Appcolors.green1,
                                  ),
                                  child: Image.asset('assest/Image/locationimage.png',scale: 3,)),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 28,right: 28,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolors.greenlight),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: Appcolors.green1,
                          ),
                          child: Row(
                            children: [
                              Text('Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,color: Appcolors.greenlight
                              ),),
                              SizedBox(width: 10,),
                              Text('Gallery',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(width: 10,),
                              Text('Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(width: 10,),
                              Text('Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ),
                ),

                SizedBox(height: 20),

                Container(
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
                        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
                        child: Text('Recent Bookings',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600,
                        ),),
                      ),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Appcolors.greenlight),
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
                                    border: Border.all(color: Appcolors.greenlight),
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
                                  border: Border.all(color: Appcolors.greenlight),
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
                      border: Border.all(color: Appcolors.greenlight)
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Appcolors.greenlight),
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
                                  border: Border.all(color: Appcolors.greenlight),
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
                                  border: Border.all(color: Appcolors.greenlight),
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
                          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
                          child: Row(
                            children: [
                              Text('Custom Package ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w600,
                              ),),
                              Text('(Best Seller - Special Discount)',style: Textstyle2Light18.appbartextstyle.copyWith(
                                fontSize: 12,fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Appcolors.greenlight)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Readymade Package',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 18,fontWeight: FontWeight.w600,
                                      ),),

                                      Text('* Home cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w400,
                                      ),),

                                      Text('* Men short hair cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w400,
                                      ),),

                                      Text('* Clean shave',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w400,
                                      ),),

                                      Text('* 10 min head massage',style: Textstyle2Light18.appbartextstyle.copyWith(
                                        fontSize: 15,fontWeight: FontWeight.w400,
                                      ),),

                                    ],
                                  ),
                                ),

                                SizedBox(width: width*0.15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('RM25 RM20',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 18,fontWeight: FontWeight.w600,
                                    ),),

                                    Text('Estimate 60 min',style: Textstyle2Light18.appbartextstyle.copyWith(
                                      fontSize: 15,fontWeight: FontWeight.w400,
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
                  padding: EdgeInsets.only(top: 15,bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Text('All Services',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 20,fontWeight: FontWeight.w600,
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Appcolors.greenlight),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 15,fontWeight: FontWeight.w600,
                                  ),),

                                  SizedBox(height: 10),

                                  Image.asset('assest/Image/tolderimage.png',scale: 4),
                                  SizedBox(height: 5),


                                  SizedBox(height: 10),

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

                                      SizedBox(width: width*0.15,),

                                      GestureDetector(

                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => BookingAppoinment()));
                                        },

                                          child: Image.asset('assest/Iocns/addicon.png',scale: 4,)),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(width: 20),

                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Appcolors.greenlight),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 15,fontWeight: FontWeight.w600,
                                  ),),

                                  SizedBox(height: 10),

                                  Image.asset('assest/Image/tipimage.png',scale: 4),
                                  SizedBox(height: 5),


                                  SizedBox(height: 10),

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

                                      SizedBox(width: width*0.15,),

                                      Image.asset('assest/Iocns/addicon.png',scale: 4,),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(width: 20),


                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Appcolors.greenlight),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 15,fontWeight: FontWeight.w600,
                                  ),),

                                  SizedBox(height: 10),

                                  Image.asset('assest/Image/tolderimage.png',scale: 4),
                                  SizedBox(height: 5),


                                  SizedBox(height: 10),

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

                                      SizedBox(width: width*0.15,),

                                      Image.asset('assest/Iocns/addicon.png',scale: 4,),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(width: 20),

                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Appcolors.greenlight),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Todler Cut',style: Textstyle2Light18.appbartextstyle.copyWith(
                                    fontSize: 15,fontWeight: FontWeight.w600,
                                  ),),

                                  SizedBox(height: 10),

                                  Image.asset('assest/Image/tipimage.png',scale: 4),
                                  SizedBox(height: 5),


                                  SizedBox(height: 10),

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

                                      SizedBox(width: width*0.15,),

                                      Image.asset('assest/Iocns/addicon.png',scale: 4,),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(width: 20),


                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20),

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
}
