class PostsModel{
  final String name;
  final String time;
  final String avatar;
  final String caption;
  final String postImage;
  final int likes;
  final int comments;

  const PostsModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.caption,
    required this.postImage,
    required this.likes,
    required this.comments,
  });
}