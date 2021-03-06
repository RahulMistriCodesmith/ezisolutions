import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
class PartnerTip extends StatefulWidget {
  const PartnerTip({Key key}) : super(key: key);

  @override
  State<PartnerTip> createState() => _PartnerTipState();
}

class _PartnerTipState extends State<PartnerTip> {

  int _activeCurrentStep = 0;
  bool jobtype = false;
  bool banking = false;
  static var dropdownValue = 'Choose Who You Want To Tip';

  List<Step> stepList() => [

    Step(
      state: _activeCurrentStep <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeCurrentStep >= 0,
      title: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
            decoration: BoxDecoration(
              color: Appcolors.green1,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text('1',style: Textstyle2Light18.appbartextstyle.copyWith(
                  color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 15
              ),),
            ),
          ),
          Text('Review &',style: Textstyle2Light18.appbartextstyle.copyWith(
              fontWeight: FontWeight.w300,fontSize: 12
          ),),
          Text('Payment',style: Textstyle2Light18.appbartextstyle.copyWith(
              fontWeight: FontWeight.w300,fontSize: 12
          ),),
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
            width: 400,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Appcolors.greenlight)
            ),

            child: DropdownButtonFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
              ),
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,),
              elevation: 16,
              style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black
              ),
              onChanged: (String newValue) {
                dropdownValue = newValue;
              },

              items: <String>['Choose Who You Want To Tip']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),

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
                width: 240,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Appcolors.green2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: Inputdec3.inputDecoration.copyWith(
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
                        Text(' By adding credit/debit card you agree on EZi',style: Textstyle1Light18.appbartextstyle.copyWith(
                            fontSize: 10,fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),
                    Text('to save your card for future payments.',style: Textstyle1Light18.appbartextstyle.copyWith(
                        fontSize: 10,fontWeight: FontWeight.w400
                    ),),
                    Text('display for future payments.',style: Textstyle1Light18.appbartextstyle.copyWith(
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
            child: InkWell(
              onTap: (){
                setState(() {
                  banking = !banking;
                });

              },
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
                      child: Icon(Icons.arrow_drop_down,color: Appcolors.greenlight,)),
                ],
              ),
            ),
          ),

          banking == true

              ?
          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Appcolors.greenlight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assest/Image/bankingimage.png',scale: 4.5,),
          )
              :
          SizedBox(height: 20),


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
                        fontSize: 13,fontWeight: FontWeight.w400,
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
                  padding: EdgeInsets.only(top: 15,bottom: 15,right: 50,left: 50),
                  decoration: BoxDecoration(
                      color: Appcolors.green1,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Appcolors.greenlight)
                  ),
                  child: Center(
                    child: Text('Proceed',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontSize: 27,fontWeight: FontWeight.w600,
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
              padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
              decoration: BoxDecoration(
                color: Appcolors.green1,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text('2',style: Textstyle2Light18.appbartextstyle.copyWith(
                    color: Appcolors.greenlight,fontWeight: FontWeight.w400,fontSize: 20
                ),),
              ),
            ),
            Text('Confirmation',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w300,fontSize: 12
            ),),
            Text('Receipt',style: Textstyle2Light18.appbartextstyle.copyWith(
                fontWeight: FontWeight.w300,fontSize: 12
            ),),
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 250,

              ),
            ),

            Center(
              child: Text('Tipped Successful',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),

            SizedBox(height: 20,),

            Text('John Doe would like to thank you for tipping him. May your generosity and kindness be rapaid to you in the future!',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                            Text('EZian Tipped',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                            Text('Category',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                            Text('EZi Walk-in',style: Textstyle2Light18.appbartextstyle.copyWith(
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
                  color: Appcolors.green1,
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
      // backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Tip to',style: Textstyle2Light18.appbartextstyle.copyWith(
                  decoration: TextDecoration.underline,fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(width: 5.0,color: Appcolors.greenlight),
                    ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Appcolors.greenlight),
                  ),
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  filled: true,
                ),
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Appcolors.greenlight,),
                elevation: 16,
                style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black
                ),
                onChanged: (String newValue) {
                  dropdownValue = newValue;
                },

                items: <String>['Choose Who You Want To Tip']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Tip Amount',style: Textstyle2Light18.appbartextstyle.copyWith(
                  decoration: TextDecoration.underline,fontWeight: FontWeight.w600,fontSize: 20
              ),),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
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
                    width: 240,
                    height: 45,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   border: Border.all(color: Appcolors.green2),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    child: TextFormField(
                      decoration: Inputdec1.inputDecoration.copyWith(
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(15),
                        hintText: 'Enter Amount',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Payment Methods',style: Textstyle2Light18.appbartextstyle.copyWith(
                  decoration: TextDecoration.underline,fontWeight: FontWeight.w600,fontSize: 18
              ),),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent
                ),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.all(3),
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined,size: 25,color: Appcolors.greenlight,),
                  // iconColor: Appcolors.greenlight,
                  title: Text('Credit/Debit Card',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 20
                  ),),
                  // subtitle: Text('Trailing expansion arrow icon'),
                  children: <Widget>[
                    ListTile(
                      title: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assest/Iocns/addicon1.png',scale: 3,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Add new Credit/Debit card.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontWeight: FontWeight.w400,fontSize: 15
                              ),
                                textAlign: TextAlign.justify,
                              ),

                              RichText(

                                overflow: TextOverflow.ellipsis,

                                textAlign: TextAlign.justify,
                                maxLines: 3,

                                // textScaleFactor: 1,
                                text: TextSpan(
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'Note: ',
                                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.black)
                                    ),
                                    TextSpan(
                                        text: 'By adding credit/debit card you agree on EZi to',
                                        style: TextStyle(fontSize: 12,color: Colors.black)
                                    ),
                                  ],
                                ),
                              ),
                              Text(' save your card information securely and display for ',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12
                              ),),
                              Text('future payments.',style: Textstyle2Light18.appbartextstyle.copyWith(
                                  fontSize: 12
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Theme(
                data: ThemeData(
                    dividerColor: Colors.transparent
                ),
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.all(3),
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined,size: 25,color: Appcolors.greenlight,),
                  // iconColor: Appcolors.greenlight,
                  title: Text('Online Banking',style: Textstyle2Light18.appbartextstyle.copyWith(
                      fontWeight: FontWeight.w600,fontSize: 20
                  ),),
                  // subtitle: Text('Trailing expansion arrow icon'),
                  children: <Widget>[
                    ListTile(
                      title: Image.asset('assest/Image/bankingimage.png'),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Row(
                children: [
                  GestureDetector(

                    onTap: (){
                      Navigator.pop(context);
                    },

                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      decoration: BoxDecoration(
                          color: Appcolors.green1,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight)
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.clear,size: 40,color: Colors.red,),

                          Text('Cancel',style: Textstyle2Light18.appbartextstyle.copyWith(
                            fontSize: 13,fontWeight: FontWeight.w400,
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
                      padding: EdgeInsets.only(top: 15,bottom: 15,right: 50,left: 50),
                      decoration: BoxDecoration(
                          color: Appcolors.green1,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Appcolors.greenlight)
                      ),
                      child: Center(
                        child: Text('Proceed',style: Textstyle2Light18.appbartextstyle.copyWith(
                          fontSize: 27,fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
