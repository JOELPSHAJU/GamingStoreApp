import 'dart:core';

class Product {
  String name;
  String imagePic;
  double rating;
  int price;

  Product(this.name, this.price, this.imagePic, this.rating);
}

List<Product> headphoneList = [
  Product(
    'Sparton Gaming HeadPhones',
    6599,
    'assets/images/pngwing.com (3).png',
    4.5,
  ),
  Product(
    'Range07 Vision HeadPhones',
    5490,
    'assets/images/pngwing.com (1).png',
    4.0,
  ),
  Product(
    'Beat Midnight Blue',
    4999,
    'assets/images/pngwing.com (2).png',
    4.0,
  ),
  Product(
    'Beat Gaming HeadPhones',
    3960,
    'assets/images/pngwing.com (6).png',
    4.0,
  ),
];

List<Product> productList = [
  Product(
    'Zebronics MAXFURY',
    1299,
    'assets/images/2.png',
    4.0,
  ),
  Product(
    'ReadGear Pro',
    1549,
    'assets/images/3.png',
    4.0,
  ),
  Product(
    'CosmicByte',
    1945,
    'assets/images/1.png',
    4.0,
  ),
];
List<Product> keyboardList = [
  Product(
    'AULA F3287',
    1949,
    'assets/images/keyboard1.png',
    4.0,
  ),
  Product(
    'MageeGee Gaming',
    2249,
    'assets/images/keyboard2.png',
    4.0,
  ),
  Product(
    'Ant Esports',
    1399,
    'assets/images/keyboard3.png',
    4.0,
  ),
];

List<Product> speakerList = [
  Product(
    'JBL Flip 5',
    6999,
    'assets/images/s4.png',
    4.0,
  ),
  Product(
    'JBL Flip 6',
    10999,
    'assets/images/s2.png',
    4.0,
  ),
  Product(
    'JBL Syntesis',
    3495,
    'assets/images/s3.png',
    4.0,
  ),
  Product(
    'JBL Go 3',
    2999,
    'assets/images/s1.png',
    4.0,
  ),
];

List<Product> vrList = [
  Product(
    'Oculus Quest 2',
    24000,
    'assets/images/vr1.png',
    4.0,
  ),
  Product(
    'Irusu Play VR',
    29980,
    'assets/images/vr2.png',
    4.0,
  ),
  Product(
    'Vision Pro',
    30490,
    'assets/images/vr3.png',
    4.0,
  ),
];
