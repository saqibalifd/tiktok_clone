class CommentsModel {
  String username;
  String text;
  String time;
  int likes;
  bool isLiked;
  String userImage;

  CommentsModel({
    required this.username,
    required this.text,
    required this.time,
    required this.likes,
    required this.isLiked,
    required this.userImage,
  });
}
