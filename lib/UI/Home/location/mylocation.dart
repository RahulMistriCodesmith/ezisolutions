import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/location/locationpage.dart';
import 'package:flutter/material.dart';
class MyLocation extends StatefulWidget {
  const MyLocation({Key key}) : super(key: key);

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
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
        child: Center(
          child: Column(
            children: [

              SizedBox(height: height*0.1,),

              Image.asset('assest/Image/locationimage1.png',scale: 5),

              SizedBox(height: height*0.15,),

              Padding(
                padding: const EdgeInsets.only(left: 32,right: 32,),
                child: Text('EZi will need to use your location  to find',style: Textstyle3Light18.appbartextstyle.copyWith(
                  fontSize: 18,fontWeight: FontWeight.w400,
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 32,right: 32),
                child: Text('and display the nearest partners to you!',style: Textstyle3Light18.appbartextstyle.copyWith(
                  fontSize: 18,fontWeight: FontWeight.w400,
                ),),
              ),

              SizedBox(height: height*0.15,),
              
              GestureDetector(

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage()));
                },

                child: Padding(
                  padding: const EdgeInsets.only(left: 32,right: 32),
                  child: Container(
                    width: width*0.8,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Appcolors.green1,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Use my location',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 20,fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.1),

              Text('Choose my preferred location',style: Textstyle3Light18.appbartextstyle.copyWith(
                fontSize: 12,fontWeight: FontWeight.w600,color: Appcolors.greenlight,decoration: TextDecoration.underline
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
