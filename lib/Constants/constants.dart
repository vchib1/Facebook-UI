import 'package:facebookui/Models/user_info_model.dart';
import 'package:flutter/material.dart';

import '../Models/friends_posts_model.dart';

Divider customDivider = Divider(
  color: Colors.grey.shade300,
  thickness: 10,
);


const List<String> images = [
  "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1557002665-c552e1832483?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1551847812-f815b31ae67c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
  "https://images.unsplash.com/photo-1604436747093-954d10b40530?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
  "https://images.unsplash.com/photo-1589424987100-72303ec43d04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=392&q=80",
  "https://images.unsplash.com/photo-1600657644140-aa5b5e003829?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
];

const List<String> names = [
  "Vivek Chib",
  "Chrissy Roberts",
  "Mac Collins",
  "Tanya Taylor",
  "Molly Fisher"
  "David Lang",
];

const List<UserInfoModel> userInfoModel = [
  UserInfoModel(firstLine: "Studied at ", secondLine: "Doaba College, Jalandhar", icon: Icons.school),
  UserInfoModel(firstLine: "Went to ", secondLine: "MCS Raja Ka Bagh", icon: Icons.school),
  UserInfoModel(firstLine: "Lives in ", secondLine: "Gurgaon, Haryana", icon: Icons.home),
  UserInfoModel(firstLine: "From ", secondLine: "Nurpur, Kangra (H.P), India", icon: Icons.home),
  UserInfoModel(firstLine: "Single ", secondLine: "", icon: Icons.heart_broken),
  UserInfoModel(firstLine: "Followed by ", secondLine: "148 People", icon: Icons.check_box),
  UserInfoModel(firstLine: "See your About info ", secondLine: "", icon: Icons.more_horiz),
];

const List<PostsModel> postsModel = [
  PostsModel(
    avatar: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    name: "Mindy Jane",
    caption: "friends forever",
    postImage: "https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    time: "5 minutes ago",
    comments: 5,
    likes: 10,
  ),
  PostsModel(
      avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      name: "Robert Gonzalez",
      caption: "How's this",
      postImage: "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      time: "10 minutes ago",
      comments: 10,
      likes: 15,
  ),
  PostsModel(
      avatar: "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      name: "Rafealla Mendez",
      caption: "#nature",
      postImage: "https://images.unsplash.com/photo-1527525443983-6e60c75fff46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80",
      time: "6 hours ago",
      comments: 60,
      likes: 101,
  ),
  PostsModel(
      avatar: "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      name: "Dooley Chris",
      caption: "the trip was awesome!!",
      postImage: "https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      time: "7 hours ago",
      comments: 16,
      likes: 55,
  ),
  PostsModel(
      avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      name: "Any Haust",
      caption: "",
      postImage: "https://images.unsplash.com/photo-1607748851687-ba9a10438621?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      time: "12 hours ago",
      comments: 95,
      likes: 301,
  ),
];



