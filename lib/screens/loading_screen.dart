import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
void getlocation()async{
  Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
  print(position);
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getlocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
