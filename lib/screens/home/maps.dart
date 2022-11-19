import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';


class LocationPicker extends StatefulWidget {
  const LocationPicker({Key, key}) : super(key: key);



  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: OpenStreetMapSearchAndPick(

            center: LatLong(31.5204, 74.3587),
            buttonColor: Colors.blue,
            buttonText: 'Select Location',
            onPicked: (pickedData) {
              print(pickedData.latLong.latitude);
              print(pickedData.latLong.longitude);
              print(pickedData.address);
              Navigator.of(context).pop();
              setState(() {
              });
            }
            ));
  }
}