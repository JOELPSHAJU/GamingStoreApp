import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/Common/rating.dart';
import 'package:gaming_shop_app_ui/constants.dart';
import 'package:gaming_shop_app_ui/model/product.dart';

class DetailScreenVr extends StatelessWidget {
  const DetailScreenVr({super.key, required this.game});
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
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: vrproductselected,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //for rating
            const Rating(),
            const SizedBox(
              height: 20,
            ),
            const Text(
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
      height: 270,
      child: Stack(
        children: [
          Container(
            height: 200,
            color: vrproductselected,
          ),
          Positioned(
              bottom: -80,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Hero(
                  tag: game.imagePic,
                  child: Image.asset(
                    game.imagePic,
                    height: 380,
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
      backgroundColor: vrproductselected,
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
