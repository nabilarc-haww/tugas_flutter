import 'package:flutter/material.dart';
import 'package:tugasdua/detail_screen.dart';
import 'package:tugasdua/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Image.asset('assets/images/makam.jfif'),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  "Blitar Makam Bungkarno",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Column(
                      children: const <Widget> [
                        Icon(Icons.calendar_today),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: const <Widget> [
                        Icon (Icons.access_time),
                        Text('08:00 - 20:00'),
                      ],
                    ),
                    Column(
                      children: const <Widget> [
                        Icon(Icons.monetization_on_rounded),
                        Text('15.000'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  "Makam Soekarno atau biasa disebut Makam Bung Karno disingkat MBK adalah kompleks pemakaman presiden pertama Republik Indonesia, Soekarno, yang didesain dengan arsitektur khas Jawa, yaitu bangunan joglo. Kompleks tersebut terletak di Bendogerit, Sananwetan, Blitar, dan dibangun di akhir 1970-an.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                            //'data:image/jpeg;base64,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'
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/makam1.jfif'),

                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/makam3.jfif'),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/makam4.jfif'),

                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
