import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class Booking1 extends StatefulWidget {
  const Booking1({Key key}) : super(key: key);

  @override
  State<Booking1> createState() => _Booking1State();
}

class _Booking1State extends State<Booking1> {

  var selectedval = "ongoing";

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
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,size: 35,)),

                    SizedBox(width: width*0.3),

                    Text('Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 18,fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedval = "ongoing";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Appcolors.greenlight),
                        color: selectedval == "ongoing" ? Appcolors.green1 : Colors.white
                      ),
                      child: Center(
                        child: Text('On Going',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 18,fontWeight: FontWeight.w400, color: selectedval == "ongoing" ? Appcolors.greenlight : Colors.black
                        ),),
                      ),
                    ),
                  ),

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedval = "completed";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight),
                          color: selectedval == "completed" ? Appcolors.green1 : Colors.white
                      ),
                      child: Center(
                        child: Text('Completed',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 18,fontWeight: FontWeight.w400, color: selectedval == "ongoing" ? Appcolors.greenlight : Colors.black
                        ),),
                      ),
                    ),
                  ),

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedval = "cancelled";
                      });
                    },

                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight),
                          color: selectedval == "cancelled" ? Appcolors.green1 : Colors.white
                      ),
                      child: Center(
                        child: Text('Cancelled',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 18,fontWeight: FontWeight.w400, color: selectedval == "ongoing" ? Appcolors.greenlight : Colors.black
                        ),),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            selectedval == "ongoing"
            ?
                Container(
                  child: Text('123'),
                )
                :
                SizedBox(),

            selectedval == "completed"
                ?
            Container(
              child: Text('456'),
            )
                :
            SizedBox(),

            selectedval == "cancelled"
                ?
            Container(
              child: Text('asd'),
            )
                :
            SizedBox(),

          ],
        ),
      ),
    );
  }
}
