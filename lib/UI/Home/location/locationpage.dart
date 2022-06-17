import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/bottomnavigation.dart';
import 'package:flutter/material.dart';
class LocationPage extends StatefulWidget {
  const LocationPage({Key key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
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
        child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                child: Image.asset('assest/Image/gpsimage.png'),
              ),
              Positioned(
                  top: 70,
                  left: 15,
                  right: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.symmetric(horizontal: 13),
                    child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'Enter your location here...',
                          suffixIcon:
                          // suffix:
                          /*Row(
                              children: [
                                Container(
                                  width: 1.5,
                                  decoration: BoxDecoration(
                                      color:
                                      ApplicationColors.jadeColorB6B.withOpacity(0.4)),
                                ),*/

                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset("assest/Image/gps 1.png",scale: 5,),
                            // color: ApplicationColors.jadeColorB6B,
                          ),
                        )
                      // ],
                      // ),

                    ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(
                            color: Appcolors.greenlight, width: 2),
                      )),
              ),
          Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: GestureDetector(

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));
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
                      child: Text('Select my location',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 20,fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ),
                ),
              ),
          )
          ]
                  ),
              ),
          ),
        );

  }
}
