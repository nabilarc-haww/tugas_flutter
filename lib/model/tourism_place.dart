import 'package:flutter/material.dart';
import 'package:tugasdua/main.dart';

class TourismPlace{
  String name;
  String location;
  String imageAssets;
  String description;
  // String openDays;
  // String openTime;
  // String ticketPrice;
  // List<String> imageUrls;


  TourismPlace({
   required this.name,
   required this.location,
   required this.imageAssets,
   required this.description,
   // required this.openDays,
   // required this.openTime,
   // required this.ticketPrice,
   // required this.imageUrls,
  });
}

var tourismPlaceList = [
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