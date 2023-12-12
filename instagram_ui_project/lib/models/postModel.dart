class postModel {
  String postedBy;
  String postImage;
  int likes;
  List<String> hashTagh;
  String content;
  postModel({
    required this.postedBy,
    required this.content,
    required this.hashTagh,
    required this.likes,
    required this.postImage,
  });
}

List<postModel> postList = [
  postModel(
      postedBy: "Nithish kumar",
      content: "how are you",
      hashTagh: ["Beach", "#Nithish"],
      likes: 5000,
      postImage:
          "https://cdn.pixabay.com/photo/2023/12/01/21/38/dragonfly-8424556_640.jpg"),
    postModel(
      postedBy: "Dora",
      content: "I am beauty girl",
      hashTagh: ["girl", "#beauty"],
      likes: 4500,
      postImage:
          "https://cdn.pixabay.com/photo/2023/12/06/15/40/woman-8433924_640.jpg"),
      postModel(
      postedBy: "Nantha kumar",
      content: "how are you",
      hashTagh: ["Beach", "#Nithish"],
      likes: 4000,
      postImage:
          "https://cdn.pixabay.com/photo/2023/11/21/07/02/girl-8402582_640.jpg"),
        postModel(
      postedBy: "Varun kumar",
      content: "how are you",
      hashTagh: ["wonder", "#Nithish"],
      likes: 1200,
      postImage:
          "https://cdn.pixabay.com/photo/2023/04/22/10/28/sheep-7943526_640.jpg"),
            postModel(
      postedBy: "Prakash kumar",
      content: "how are you",
      hashTagh: ["Beach", "#Nithish"],
      likes: 6800,
      postImage:
          "https://cdn.pixabay.com/photo/2023/04/21/17/47/plum-blossoms-7942343_640.jpg"),
            postModel(
      postedBy: "Dinesh kumar",
      content: "how are you",
      hashTagh: ["Beach", "#Nithish"],
      likes: 3500,
      postImage:
          "https://cdn.pixabay.com/photo/2023/07/29/17/36/fly-8157417_640.jpg"),
];
