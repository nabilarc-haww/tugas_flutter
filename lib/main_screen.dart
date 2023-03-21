import 'package:flutter/material.dart';
import 'package:tugasdua/detail_screen.dart';
import 'package:tugasdua/done_tourism_list.dart';
import 'package:tugasdua/list_item.dart';
import 'package:tugasdua/model/tourism_place.dart';
import 'package:tugasdua/tourism_list.dart';

class MainScreen extends StatefulWidget {
  //final TourismPlace place;
  //const MainScreen(Key? key, place) : super(key: key);
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Blitar'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DoneTourismList();
                }),);
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}
  // final List<TourismPlace> tourismPlaceList = [
  //   TourismPlace(
  //     name: 'Makam Bungkarno',
  //     location: 'Kota Blitar',
  //     imageAssets: 'assets/images/soekarno.jfif',
  //     description: 'Kompleks pemakaman presiden pertama Indonesia...',
  //
  //   ),
  //   TourismPlace(
  //     name: 'Pantai Tambakrejo',
  //     location: 'Kota Blitar',
  //     imageAssets: 'assets/images/Pasir_Putih_Tambakrejo.jpg',
  //     description: 'Pantai berpasir putih yang terletak di sebuah teluk...',
  //   ),
  //   TourismPlace(
  //     name: 'Kampung Coklat',
  //     location: 'Kota Blitar',
  //     imageAssets: 'assets/images/cuklat.jfif',
  //     description: 'Wisata cokelat yang menampilkan pembuatan...',
  //   ),
  //   TourismPlace(
  //     name: 'Pantai Jolosutro',
  //     location: 'Kota Blitar',
  //     imageAssets: 'assets/images/Pantai-Jolosutro.jpg',
  //     description: 'Pantai Jolosutro berada di Kabupaten Blitar...',
  //   ),
  //   TourismPlace(
  //     name: 'Pantai Pasir Putih',
  //     location: 'Kota Blitar',
  //     imageAssets: 'assets/images/pantaipasir.jfif',
  //     description: 'Pantai dengan air bening, kepiting pasir...',
  //   ),
  // ];

class TourismPlaceGrid extends StatelessWidget{
  final int gridCount;
  const TourismPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16, //jarak
        mainAxisSpacing: 16, //jarak agar agar antara item tidak terlalu rapat
        children: tourismPlaceList.map((place) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      place.imageAssets,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      place.location,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class TourismPlaceList extends StatelessWidget {
  const TourismPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          // child: Card(
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Expanded(
          //         flex: 1,
          //         child: Image.asset(place.imageAsset),
          //       ),
          //       Expanded(
          //         flex: 2,
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Text(
          //                 place.name,
          //                 style: const TextStyle(fontSize: 16.0),
          //               ),
          //               const SizedBox(
          //                 height: 10,
          //               ),
          //               Text(place.location),
          //             ],
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}