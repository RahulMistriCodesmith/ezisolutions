import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Authorization/Login/mainloginpage.dart';
import 'package:flutter/material.dart';
class LanguagePage extends StatefulWidget {
  const LanguagePage({Key key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(

            children: [

              SizedBox(
                height: height*0.2,
              ),

              Center(child: Image.asset('assest/Image/languageimage.png',scale: 5,)),

              SizedBox(
                height: height*0.035,
              ),

              Text('Please choose your preferred language.',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontSize: 19,fontWeight: FontWeight.w400),
              textAlign: TextAlign.justify,
              ),

              SizedBox(
                height: height*0.035,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GestureDetector(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MainLoginPage()));
                      },

                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolors.greenlight,),
                          borderRadius: BorderRadius.circular(5),
                          color: Appcolors.green1.withOpacity(0.5),
                        ),
                        child: Text('ENG',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 45,fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 23,vertical: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Appcolors.greenlight),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Text('BM',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 45,fontWeight: FontWeight.w600
                      ),),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
