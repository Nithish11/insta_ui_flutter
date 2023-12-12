import 'package:flutter/material.dart';
import 'package:instagram_ui_project/models/PostModel.dart';
import 'package:instagram_ui_project/models/profileModel.dart';
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
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              topTitlewidget(),
              profileListwidget(),
              const Divider(
                thickness: 2,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: postList.length,
                  itemBuilder: (__, index) =>
                      postWidget(subtitleStyle: subtitleStyle,
                         PostModel: postList[index],
                      )),
            ]),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView profileListwidget() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            yourStorywidget(),
            for (int i = 0; i < profilesList.length; i++) ...{
              profileWidget(
                  name: profilesList[i].name,
                  imagePath: profilesList[i].imagePath)
            }
          ],
        ),
      ),
    );
  }

  Column yourStorywidget() {
    return Column(
      children: [
        Stack(
          children: [
            ClipOval(
              child: Image.network(
                profilesList[0].imagePath,
                height: 58,
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Material(
                    borderRadius: BorderRadius.circular(50),
                    child: Icon(
                      Icons.add_circle,
                      size: 20,
                    )))
          ],
        ),
        Text(
          "Your story",
          style: TextStyle(color: Colors.grey),
        ),
      ],
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

class postWidget extends StatelessWidget {
  const postWidget({
    super.key,
    required this.subtitleStyle,
    required this.PostModel
    // required this.content,
    // required this.hashTagh,
    // required this.likes,
    // required this.postImage,
    // required this.postedBy
  });

  final TextStyle subtitleStyle;

  final postModel PostModel;

  // final String postedBy;
  // final String postImage;
  // final int likes;
  // final List<String> hashTagh;
  // final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              instaGradiant(
                imagePath: profilesList[0].imagePath,
                size: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(PostModel.postedBy, style: subtitleStyle),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
                PostModel.postImage),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.circle_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send)),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.bookmark_add_outlined)),
            ],
          ),
          Text(
            "${PostModel.likes} Likes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                PostModel.content,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
              "  #${PostModel.hashTagh[0]}",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          )
        ],
      ),
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
          instaGradiant(imagePath: imagePath),
          Text(name, style: subtitleStyle),
        ],
      ),
    );
  }
}

class instaGradiant extends StatelessWidget {
  const instaGradiant({super.key, required this.imagePath, this.size = 60});
  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
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
            height: size,
          ),
        ),
      ),
    );
  }
}
