
import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ListViewEx extends StatefulWidget {
  const ListViewEx({Key key}) : super(key: key);

  @override
  _ListViewExState createState() => _ListViewExState();
}

class _ListViewExState extends State<ListViewEx> {
  int pageIndex = 0;

  List allUsersList = [];




  bool showAll = false;
  bool checkbox = false;

  String userEmail;
  String userPassword;
  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPwdController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
//     Future.delayed(Duration.zero, () async {
//       _savePreferences = await SharedPreferences.getInstance();
//
//       userEmail = _savePreferences.getString('userEmail');
//       userPassword = _savePreferences.getString('userPassword');
// bool isLogin = _savePreferences.getBool('isLogin');
//
//       signInEmailController.text = userEmail;
//       signInPwdController.text = userPassword;
//
//       print('Username--> ${userEmail}');
//       print('Userpass--> ${userPassword}');
//       isLogin == true ?
//       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage())):
//       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));
//
//     });


    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  // height: 211,
                  width: width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/people_voice.png",
                              width: 20, height: 20),
                          SizedBox(width: 5),
                          const Text(
                            "The People Voice Matters",
                            style: Textstyle2Light18.appbartextstyle,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                "At EZi we take every feedback into consideration so that we can enhance and improve our service for you! So don’t hold back, we are listening.",
                                style: Textstyle2Light18.appbartextstyle,
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 105,
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: AlwaysScrollableScrollPhysics(),
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  width: 270,
                                  height: 76,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                          "assets/images/excellent_service.png",
                                          fit: BoxFit.fill,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Appcolors.green1,
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                                color: Appcolors.greenlight,
                                                width: 1)),
                                      ),
                                      Expanded(
                                          child: Padding(
                                            padding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Excelent service",
                                                      style: Textstyle2Light18.appbartextstyle,
                                                    ),
                                                    Text(
                                                      "10 May 21",
                                                      style:Textstyle2Light18.appbartextstyle,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  "\"The service is really good. I’ll definitely recommend to all my friends and family\"",
                                                  style:
                                                  Textstyle2Light18.appbartextstyle,
                                                  textAlign: TextAlign.justify,
                                                  maxLines: 3,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Appcolors.green1,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color:
                                          Appcolors.greenlight,
                                          width: 2)),
                                );
                              })),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Appcolors.green1,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Appcolors.greenlight, width: 2)),
                ),
                SizedBox(height: 15),
              ],
            )),
      ),
    );
  }
}

List preferredServiceList = [
  {
    'image':
    Image.asset("assets/images/barber_shop.png", height: 30, width: 35),
    'servicetext': 'Barber Shop',
    'text': '(500 Partners available)',
  },
  {
    'image':
    Image.asset("assets/images/hair_saloon.png", height: 30, width: 35),
    'servicetext': 'Hair Saloon',
    'text': '(500 Partners available)',
  },
  {
    'image': Image.asset("assets/images/car_wash.png", height: 30, width: 35),
    'servicetext': 'Car Wash',
    'text': '(500 Partners available)',
  },
  {
    'image': Image.asset("assets/images/massage.png", height: 30, width: 35),
    'servicetext': 'Massage',
    'text': '(500 Partners available)',
  },
  {
    'image': Image.asset("assets/images/cleaning_service.png",
        height: 30, width: 35),
    'servicetext': 'Cleaning Service',
    'text': '(500 Partners available)',
  },
  {
    'image': Image.asset("assets/images/plumbing_service.png",
        height: 30, width: 35),
    'servicetext': 'Plumbing Service',
    'text': '(500 Partners available)',
  },
  {
    'image':
    Image.asset("assets/images/aircond_repair.png", height: 30, width: 35),
    'servicetext': 'Aircond Repair',
    'text': '(500 Partners available)',
  },
  {
    'image': Image.asset("assets/images/electrical_repair.png",
        height: 30, width: 35),
    'servicetext': 'Electrical Repair',
    'text': '(500 Partners available)',
  },
  {
    'image':
    Image.asset("assets/images/more_service.png", height: 30, width: 35),
    'servicetext': 'More Services',
    'text': '(500 Partners available)',
  }
];