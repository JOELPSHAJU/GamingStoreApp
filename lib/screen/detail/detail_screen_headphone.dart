import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/Common/rating.dart';
import 'package:gaming_shop_app_ui/constants.dart';
import 'package:gaming_shop_app_ui/model/product.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreenHeadphone extends StatelessWidget {
  const DetailScreenHeadphone({super.key, required this.game});
  final Product game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 20, 20),
      appBar: myAppbar(),
      body: Column(
        children: [
          detailImage(),
          Expanded(child: itemsDetails()),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₹ ${game.price}/-",
                  style: GoogleFonts.signikaNegative(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: headphoneselectedcolor,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: GoogleFonts.signikaNegative(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  itemsDetails() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              game.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Rating(),
            const SizedBox(
              height: 20,
            ),
            Text(
              '''This is the market's best choice refers to a product or service that stands out as the top option among its competitors. It typically implies superior quality, reliability, and value, making it a highly recommended choice for consumers.''',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox detailImage() {
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          Container(
            height: 200,
            color: headphoneselectedcolor,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Hero(
                  tag: game.imagePic,
                  child: Image.asset(
                    game.imagePic,
                    height: 280,
                    width: 330,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: headphoneselectedcolor,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
