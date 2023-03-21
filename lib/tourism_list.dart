import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugasdua/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:tugasdua/list_item.dart';
import 'package:tugasdua/model/tourism_place.dart';
import 'package:tugasdua/provider/done_tourism_provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  //final List<TourismPlace> doneTourismPlaceList ;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Makam Bungkarno',
      location: 'Kota Blitar',
      imageAssets: 'assets/images/soekarno.jfif',
      description: 'Kompleks pemakaman presiden pertama Indonesia...',
    ),
    TourismPlace(
      name: 'Pantai Tambakrejo',
      location: 'Kota Blitar',
      imageAssets: 'assets/images/Pasir_Putih_Tambakrejo.jpg',
      description: 'Pantai berpasir putih yang terletak di sebuah teluk...',
    ),
    TourismPlace(
      name: 'Kampung Coklat',
      location: 'Kota Blitar',
      imageAssets: 'assets/images/cuklat.jfif',
      description: 'Wisata cokelat yang menampilkan pembuatan...',
    ),
    TourismPlace(
      name: 'Pantai Jolosutro',
      location: 'Kota Blitar',
      imageAssets: 'assets/images/Pantai-Jolosutro.jpg',
      description: 'Pantai Jolosutro berada di Kabupaten Blitar...',
    ),
    TourismPlace(
      name: 'Pantai Pasir Putih',
      location: 'Kota Blitar',
      imageAssets: 'assets/images/pantaipasir.jfif',
      description: 'Pantai dengan air bening, kepiting pasir...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList = Provider.of<DoneTourismProvider>(
      context,
      listen: false
    ).doneTourismPlaceList;
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? doneTourismPlaceList.add(place)
                          : doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}