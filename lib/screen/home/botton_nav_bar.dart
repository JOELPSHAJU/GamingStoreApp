import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class MyBottomNaigationBar extends StatefulWidget {
  const MyBottomNaigationBar({super.key});

  @override
  State<MyBottomNaigationBar> createState() => _MyBottomNaigationBarState();
}

class _MyBottomNaigationBarState extends State<MyBottomNaigationBar> {
  int currentindexbottom = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: const Color.fromARGB(255, 29, 27, 27),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: const Color.fromARGB(255, 29, 27, 27),
      items: [
        CurvedNavigationBarItem(
          child: Icon(
            Icons.home_outlined,
            color: currentindexbottom == 0 ? Colors.white : Colors.grey,
          ),
          label: 'Home',
          labelStyle: TextStyle(
            color: currentindexbottom == 0 ? Colors.white : Colors.grey,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.search,
            color: currentindexbottom == 1 ? Colors.white : Colors.grey,
          ),
          label: 'Search',
          labelStyle: TextStyle(
            color: currentindexbottom == 1 ? Colors.white : Colors.grey,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.chat_bubble_outline,
            color: currentindexbottom == 2 ? Colors.white : Colors.grey,
          ),
          label: 'Chat',
          labelStyle: TextStyle(
            color: currentindexbottom == 2 ? Colors.white : Colors.grey,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.newspaper,
            color: currentindexbottom == 3 ? Colors.white : Colors.grey,
          ),
          label: 'Feed',
          labelStyle: TextStyle(
            color: currentindexbottom == 3 ? Colors.white : Colors.grey,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.perm_identity,
            color: currentindexbottom == 4 ? Colors.white : Colors.grey,
          ),
          label: 'Personal',
          labelStyle: TextStyle(
            color: currentindexbottom == 4 ? Colors.white : Colors.grey,
          ),
        ),
      ],
      onTap: (index) {
        setState(() {
          currentindexbottom = index;
        });
      },
    );
  }
}
