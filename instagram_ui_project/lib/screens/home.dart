import 'package:flutter/material.dart';
import 'package:instagram_ui_project/resources.dart';

class home_page extends StatefulWidget {
  home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  TextStyle subtitleStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          ThemeData(primaryIconTheme: const IconThemeData(color: Colors.black)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: customAppbar(),
          body: Column(children: [
            topTitlewidget(),
            Row(
              children: [
                profileWidget(
                  name: 'Ananya',
                  imagePath: "https://randomuser.me/api/portraits/women/17.jpg",
                ),
                 profileWidget(
                  name: 'Ananya',
                  imagePath: "https://randomuser.me/api/portraits/women/17.jpg",
                ),
                 profileWidget(
                  name: 'Ananya',
                  imagePath: "https://randomuser.me/api/portraits/women/17.jpg",
                ),
                 profileWidget(
                  name: 'Ananya',
                  imagePath: "https://randomuser.me/api/portraits/women/17.jpg",
                ),
                
              
              ],
            )
          ]),
        ),
      ),
    );
  }

  Padding topTitlewidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            "Stories",
            style: subtitleStyle,
          ),
          Spacer(),
          Icon(Icons.arrow_right),
          Text(
            "Watch all",
            style: subtitleStyle,
          ),
        ],
      ),
    );
  }

  AppBar customAppbar() {
    return AppBar(
      backgroundColor: Colors.grey.shade100,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.camera_alt),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Image.network(
          logo,
          height: 40,
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.send_sharp))
      ],
    );
  }
}

class profileWidget extends StatelessWidget {
  final String name;
  final String imagePath;

  profileWidget({super.key, required this.name, required this.imagePath});
  TextStyle subtitleStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 55,
            width: 55,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xfff7b553),
                      Color(0xffef732b),
                      Color(0xff5f47b9),
                      Color(0xff9437b9),
                    ])),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ClipOval(
                child: Image.network(
                  imagePath,
                  height: 60,
                ),
              ),
            ),
          ),
          Text(name, style: subtitleStyle),
        ],
      ),
    );
  }
}
