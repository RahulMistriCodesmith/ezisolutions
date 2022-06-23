import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/My%20Profile/updateaddress.dart';
import 'package:flutter/material.dart';
class SaveAddress extends StatefulWidget {
  const SaveAddress({Key key}) : super(key: key);

  @override
  State<SaveAddress> createState() => _SaveAddressState();
}

class _SaveAddressState extends State<SaveAddress> {
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
                      width: width*0.2,
                    ),

                    Text('Saved Address',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 70,vertical: 5),
              margin: EdgeInsets.only(top: 20,bottom: 20),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Add New Card',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Iocns/locationicon.png',scale: 5,),

                  Expanded(child: SizedBox()),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),
                      Text('No5. Jalan semarak off jalan nilai',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                      overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text('Tampin, 71000',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),

                  GestureDetector(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateAddress()));
                      },

                      child: Image.asset('assest/Image/pen.png',scale: 5,)),

                  Expanded(child: SizedBox()),

                  Image.asset('assest/Iocns/delete.png',scale: 5,),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset('assest/Iocns/locationicon.png',scale: 5,),

                  Expanded(child: SizedBox()),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Office',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 18
                      ),),
                      Text('No5. Jalan semarak off jalan nilai',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text('Tampin, 71000',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w400,fontSize: 15
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Image.asset('assest/Image/pen.png',scale: 5,),
                  Expanded(child: SizedBox()),
                  Image.asset('assest/Iocns/delete.png',scale: 5,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
