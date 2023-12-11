import 'package:flutter/material.dart';
import 'package:instagram_ui_project/resources.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          ThemeData(primaryIconTheme: const IconThemeData(color: Colors.black)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: customAppbar(),
          body: Column(
            children: [
              Row(
                children: [
                  
                ],
              )
            ]),
        ),
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
