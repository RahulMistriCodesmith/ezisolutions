import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class AmountPay extends StatefulWidget {
  const AmountPay({Key key}) : super(key: key);

  @override
  State<AmountPay> createState() => _AmountPayState();
}

class _AmountPayState extends State<AmountPay> {
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
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(width: width*0.3,),

                    Text('QR Codes',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w400
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
}
