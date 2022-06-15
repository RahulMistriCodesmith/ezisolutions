import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class BookingAppoinment extends StatefulWidget {
  const BookingAppoinment({Key key}) : super(key: key);

  @override
  State<BookingAppoinment> createState() => _BookingAppoinmentState();
}

class _BookingAppoinmentState extends State<BookingAppoinment> {

  int _activeCurrentStep = 0;

  List<Step> stepList() => [

    Step(
      state: _activeCurrentStep <= 0 ? StepState.editing : _activeCurrentStep <= 1 ? StepState.complete : StepState.complete,
      isActive: _activeCurrentStep >= 0,
      title: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Appcolors.green1,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(50),
            ),
            width: 40,
            height: 40,
            child: Center(
              child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                  color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
              ),),
            ),
          ),
          Text('Select'),
          Text('Date & Slot'),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Choose Date',style: Textstyle2Light18.appbartextstyle.copyWith(
            fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline
          ),),

        ],
      ),
    ),

    Step(
        state:
        _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrentStep >= 1,
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 40,
              height: 40,
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Review &'),
            Text('Payment'),
          ],
        ),
        content: Column(
          children: [


          ],
        )),

    Step(
        state:
        _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrentStep >= 1,
        title: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 40,
              height: 40,
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Confirmation'),
            Text('Receipt'),
          ],
        ),
        content: Column(
          children: [


          ],
        ))

  ];

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
                      width: width*0.25,
                    ),

                    Text('Schedule Booking',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(

              width: width*2,
              height: height,
              child: Stepper(
                elevation: 0,
                type: StepperType.horizontal,
                currentStep: _activeCurrentStep,
                steps: stepList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
