import 'package:flutter/material.dart';
import 'package:instagram_ui_project/screens/fav.dart';
import 'package:instagram_ui_project/screens/home.dart';
import 'package:instagram_ui_project/screens/profile.dart';
import 'package:instagram_ui_project/screens/reel.dart';
import 'package:instagram_ui_project/screens/search.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});
  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int selectedIndex = 0;
  List page =[
     profile_page(),
     home_page(),
     search_page(),
     fav_page(),
     reel_page(),
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          onTap: (index) => setState(() => selectedIndex = index),
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Serach", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "Add", icon: Icon(Icons.add)),
            BottomNavigationBarItem(
                label: "Favorite", icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(label: "Person", icon: Icon(Icons.person)),
          ]),
    );
  }
}
