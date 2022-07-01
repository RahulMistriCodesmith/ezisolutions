// ignore_for_file: sort_child_properties_last

import 'package:ezisolutions/Commponets/Colors/Colors.dart';
import 'package:ezisolutions/Commponets/Fonts/Fonts.dart';
import 'package:ezisolutions/UI/Home/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
class LocationPage extends StatefulWidget {
  const LocationPage({Key key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  TextEditingController map = TextEditingController();

  static final LatLng _center = const LatLng(45.521563, -122.677433);
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
      // backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.greenlight,
        elevation: 0,
        toolbarHeight: 5,
      ),
      body: Container(
        height: height,
        width: width,
        child: Stack(
            children: [

              GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 10.0,
                  ),
                  markers: _markers,
                  onCameraMove: _onCameraMove
              ),



              Positioned(
                top: 70,
                left: 15,
                right: 15,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.symmetric(horizontal: 13),
                    child: placesAutoCompleteTextField(),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      border: Border.all(
                          color: Appcolors.greenlight, width: 2),
                    )
                ),
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
                    padding: const EdgeInsets.only(left: 32,right: 32,bottom: 20),
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
    );

  }
  placesAutoCompleteTextField() {
    return GooglePlaceAutoCompleteTextField(
        textEditingController: map,
        googleAPIKey: "AIzaSyCaNIRkKEd5QzJ0qkNhRW3O7EqeV4Nv_HA",
        inputDecoration: InputDecoration(
          border: InputBorder.none,
            hintText: "Search your location",
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: ImageIcon(AssetImage('assest/Image/gps 1.png'),size: 10,color: Appcolors.greenlight,),
          ),
        ),
        debounceTime: 800,
        isLatLngRequired: false,
        getPlaceDetailWithLatLng: (Prediction prediction) {
          print("placeDetails" + prediction.lng.toString());
        },
        itmClick: (Prediction prediction) {
          map.text = prediction.description;

          map.selection = TextSelection.fromPosition(
              TextPosition(offset: prediction.description.length));
        }
      // default 600 ms ,
    );
  }

}
