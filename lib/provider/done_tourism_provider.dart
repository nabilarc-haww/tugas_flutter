import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugasdua/main.dart';
import 'package:tugasdua/main_screen.dart';
import 'package:tugasdua/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

  void complete(TourismPlace place, bool isDone){
    isDone
      ? _doneTourismPlaceList.add(place)
      : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}

// void main(){
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (context) => DoneTourismProvider(),
//       child: MaterialApp(
//         title: 'Contacts',
//         theme: ThemeData(),
//         home: MainScreen(),
//       ),
//     );
//   }
// }