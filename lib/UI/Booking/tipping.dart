import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class Tipping extends StatefulWidget {
  const Tipping({Key key}) : super(key: key);

  @override
  State<Tipping> createState() => _TippingState();
}

class _TippingState extends State<Tipping> {

  int _activeCurrentStep = 0;
  bool jobtype = false;

  List<Step> stepList() => [

    Step(
      state: _activeCurrentStep <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeCurrentStep >= 0,
      title: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Appcolors.green1,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(50),
            ),
            width: 50,
            height: 50,
            child: Center(
              child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                  color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
              ),),
            ),
          ),
          Text('Review & Payment'),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text('Tip to',style: Textstyle2Light18.appbartextstyle.copyWith(
              decoration: TextDecoration.underline,fontWeight: FontWeight.w600,fontSize: 20
          ),),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Appcolors.green2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text('John Martin',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,color: Appcolors.greenlight
                ),),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text('Tip Amount',style: Textstyle2Light18.appbartextstyle.copyWith(
              decoration: TextDecoration.underline,fontWeight: FontWeight.w600,fontSize: 20
          ),),
          SizedBox(height: 15),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.green2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('RM',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 18,color: Appcolors.greenlight
                ),),
              ),
              
              Expanded(child: SizedBox()),
              
              Container(
                width: 295,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.green2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: Inputdec1.inputDecoration.copyWith(
                    hintText: 'Enter Amount',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('Payment Methods',style: Textstyle2Light18.appbartextstyle.copyWith(
              decoration: TextDecoration.underline,fontWeight: FontWeight.w600,fontSize: 20
          ),),
          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Appcolors.greenlight),
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
                  Text('Credit/Debit Card',style: Textstyle2Light18.appbartextstyle.copyWith(
                      color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                  ),),
                  Expanded(child: SizedBox()),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Appcolors.greenlight),
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
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.asset('assest/Iocns/addicon1.png',scale: 4.5,),

                Expanded(child: SizedBox()),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add new Credit/Debit card.',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 12,fontWeight: FontWeight.w400
                    ),),

                    Row(
                      children: [
                        Text('Note:',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w700
                        ),),
                        Text(' By adding credit/debit card you agree on EZi to save your card',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    Text('information securely and display for future payments.',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 10,fontWeight: FontWeight.w400
                    ),),
                  ],
                ),

              ],
            ),
          )
              :
          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Online Banking',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                ),),
                Expanded(child: SizedBox()),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.arrow_drop_up,color: Appcolors.greenlight,)),
              ],
            ),
          ),

          SizedBox(height: 15,),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Online Banking',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.grey1,fontSize: 18,fontWeight: FontWeight.w600
                ),),
                Expanded(child: SizedBox()),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Row(
            children: [
              GestureDetector(

                onTap: (){
                  Navigator.pop(context);
                },

                child: Container(
                  padding: EdgeInsets.only(bottom: 3,right: 15,left: 15),
                  decoration: BoxDecoration(
                      color: Appcolors.green1,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Appcolors.greenlight)
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.clear,size: 45,color: Colors.red,),

                      Text('Cancel',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontSize: 15,fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                ),
              ),

              Expanded(child: SizedBox()),

              GestureDetector(

                onTap: (){
                  setState(() {
                    _activeCurrentStep += 1;
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                },

                child: Container(
                  width: 250,
                  padding: EdgeInsets.only(top: 15,bottom: 15),
                  decoration: BoxDecoration(
                      color: Appcolors.green1,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Appcolors.greenlight)
                  ),
                  child: Center(
                    child: Text('Make Payment',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 30,fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
              ),
            ],
          ),

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
              width: 50,
              height: 50,
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Confirmation Receipt'),
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 250,
                color: Colors.white,
              ),
            ),

            Center(
              child: Text('Payment Successful',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            SizedBox(height: 20,),

            Text('Your appointment have been successfully scheduled. You will receive a reminder 1 hour before your appointment starts. Thank you for using EZi!',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w400,fontSize: 15
            ),),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text('Partner Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('EZian Name',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Tipped No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Transaction No',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Payment Method',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('EZi Class',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Tipped Date',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Tipped Time',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w600,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                          ],
                        ),

                        Expanded(child: SizedBox()),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text('EZi Barber',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('John Doe',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('TIP 0001',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('0001',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('Online Transfer',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('EZi Tipping',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('16 May 2021',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),
                            Text('11:28 PM',style: Textstyle2Light18.appbartextstyle.copyWith(
                              fontWeight: FontWeight.w400,fontSize: 15,
                            ),),
                            SizedBox(height: 10),

                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15,right: 35,top: 10,bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Appcolors.greenlight),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('Total Tipped',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontWeight: FontWeight.w700,fontSize: 15,color: Appcolors.grey1
                        ),),
                        Expanded(child: SizedBox()),
                        Text('RM 36.00',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontWeight: FontWeight.w600,fontSize: 15,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),

            Center(
              child: Container(
                width: 280,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Done',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w600,fontSize: 30,
                  ),),
                ),
              ),
            ),

            SizedBox(height: 20,),

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
                      width: width*0.3,
                    ),

                    Text('Tipping',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            Container(

              width: width,
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
