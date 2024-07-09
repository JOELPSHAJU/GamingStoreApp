import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/constants.dart';
import 'package:gaming_shop_app_ui/screen/home/headphone_list.dart';
import 'package:gaming_shop_app_ui/screen/home/keyboards_list.dart';
import 'package:gaming_shop_app_ui/screen/home/product_list.dart';
import 'package:gaming_shop_app_ui/screen/home/speaker_list.dart';
import 'package:gaming_shop_app_ui/screen/home/vr_products_list.dart';
import 'package:svg_flutter/svg.dart';

import 'botton_nav_bar.dart';

int categoryindex = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = [
    "Headsets",
    "Keyboards",
    "Controllers",
    "Speakers",
    "VR Accessories"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 20, 20),
      extendBody: true,
      bottomNavigationBar: const MyBottomNaigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myAppBarItems(),
          welcomeText(),
          const SizedBox(
            height: 20,
          ),
          categorySelection(),
          Expanded(child: getCategoryList()),
        ],
      ),
    );
  }

  List color = [
    headphoneselectedcolor,
    keyboardselectedBackground,
    kSelectCardBackgroundColor,
    speakerSelectedColor,
    vrproductselected
  ];

  Widget getCategoryList() {
    switch (categoryindex) {
      case 0:
        return const HeadphoneList();

      case 1:
        return const KeyboardsList();
      case 2:
        return const ProductList();
      case 3:
        return const SpeakerList();
      case 4:
        return const VrProductsList();
      default:
        return const ProductList(); // Default case
    }
  }

  SizedBox categorySelection() {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  categoryindex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: categoryindex == index
                              ? Colors.white
                              : Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 3,
                        width: 50,
                        color: categoryindex == index
                            ? color[index]
                            : Colors.transparent,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  welcomeText() {
    return Column(
      children: [
        Image.asset('assets/images/banner.png'),
      ],
    );
  }

  myAppBarItems() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 29, 27, 27),
      surfaceTintColor: Color.fromARGB(255, 29, 27, 27),
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/icon_menu.svg",
            color: Colors.white,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/icon_search.svg",
              color: Colors.white,
            )),
      ],
    );
  }
}
