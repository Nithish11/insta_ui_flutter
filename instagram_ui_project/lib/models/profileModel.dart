class profileModel {
  String imagePath;
  String name;
  profileModel({required this.imagePath, required this.name});
}

List<profileModel> profilesList = [
  profileModel(
      name: "Nithish",
      imagePath: "https://randomuser.me/api/portraits/men/11.jpg",
      ),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/13.jpg",
      name: "Sam"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/12.jpg",
      name: "Varun"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/15.jpg",
      name: "Jeeva"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/71.jpg",
      name: "Prakash"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/14.jpg",
      name: "Nandha"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/33.jpg",
      name: "Nithish"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/women/3.jpg",
      name: "Dora"),
  profileModel(
      imagePath: "https://randomuser.me/api/portraits/men/61.jpg",
      name: "Santhosh"),
];
