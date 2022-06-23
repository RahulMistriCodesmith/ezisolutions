import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class UpdateAddress extends StatefulWidget {
  const UpdateAddress({Key key}) : super(key: key);

  @override
  State<UpdateAddress> createState() => _UpdateAddressState();
}

class _UpdateAddressState extends State<UpdateAddress> {

  var selectedval = "landed";
  var selectedval1 = "Home";

  TextEditingController map = TextEditingController();

  static final LatLng _center = const LatLng(45.521422, -122.677525);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  GoogleMapController myController;

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_currentMapPosition.toString()),
        position: _currentMapPosition,
        infoWindow: InfoWindow(
            title: 'Nice Place',
            snippet: 'Welcome to Poland'
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }
  GoogleMapController mapController;

  void _onCameraMove(CameraPosition position) {
    _currentMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


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
                      width: width*0.15,
                    ),

                    Text('Update Address Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 18
                    ),),

                  ],
                ),
              ),
            ),

            SizedBox(height: height*0.02),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assest/Iocns/delete.png',scale: 5,),
                SizedBox(width: 20),
              ],
            ),

            SizedBox(height: height*0.025),

            Container(
              width: width,
              height: height*0.25,
              child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 10.0,
                  ),
                  markers: _markers,
                  onCameraMove: _onCameraMove
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Address',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
              ),),
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Appcolors.greenlight),
                  color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text('No 5, Jalan semarak off jalan nilai, 71000, Negeri Sembilan',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w400,fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Image.asset('assest/Image/gps 1.png',scale: 3,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Unit/Floor',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
              ),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolors.greenlight),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text('A-26-15',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Residance Type',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
              ),),
            ),

            Row(
              children: [
                GestureDetector(

                  onTap: (){
                    setState(() {
                      selectedval = "landed";
                    });
                  },

                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedval == "landed" ? Appcolors.green1 : Colors.white,
                      border: Border.all(color: Appcolors.greenlight,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Landed',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 20,
                    ),),
                  ),
                ),

                Expanded(child: SizedBox()),

                GestureDetector(

                  onTap: (){
                    setState(() {
                      selectedval = "highrise";
                    });
                  },

                  child: Container(
                    margin: EdgeInsets.only(right: 20,top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedval == "highrise" ? Appcolors.green1 : Colors.white,
                      border: Border.all(color: Appcolors.greenlight,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Highrise',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 20,
                    ),),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Text('Tags',style: Textstyle2Light18.appbartextstyle.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 20,decoration: TextDecoration.underline
              ),),
            ),

            Row(
              children: [
                GestureDetector(

                  onTap: (){
                    setState(() {
                      selectedval1 = "Home";
                    });
                  },

                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 20,bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 25,vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedval1 == "Home" ? Appcolors.green1 : Colors.white,
                      border: Border.all(color: Appcolors.greenlight,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Home',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 15,
                    ),),
                  ),
                ),

                Expanded(child: SizedBox()),

                GestureDetector(

                  onTap: (){
                    setState(() {
                      selectedval1 = "Work";
                    });
                  },

                  child: Container(
                    margin: EdgeInsets.only(bottom: 20,top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedval1 == "Work" ? Appcolors.green1 : Colors.white,
                      border: Border.all(color: Appcolors.greenlight,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Work',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 15,
                    ),),
                  ),
                ),

                Expanded(child: SizedBox()),

                GestureDetector(

                  onTap: (){
                    setState(() {
                      selectedval1 = "Custom";
                    });
                  },

                  child: Container(
                    margin: EdgeInsets.only(top: 20,right: 20,bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedval1 == "Custom" ? Appcolors.green1 : Colors.white,
                      border: Border.all(color: Appcolors.greenlight,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Custom',style: Textstyle2Light18.appbartextstyle.copyWith(
                        fontWeight: FontWeight.w600,fontSize: 15,
                    ),),
                  ),
                ),

              ],
            ),

            Container(
              height: height*0.06,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Appcolors.greenlight),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: Inputdec3.inputDecoration.copyWith(
                  hintText: 'Type Your Custom Tags Here'
                ),
              ),
            ),

            SizedBox(height: 20,),

            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 80),
                decoration: BoxDecoration(
                  color:Appcolors.green1,
                  border: Border.all(color: Appcolors.greenlight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Update Details',style: Textstyle2Light18.appbartextstyle.copyWith(
                    fontWeight: FontWeight.w600,fontSize: 20,
                ),),
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
