import 'package:facebookui/Constants/constants.dart';
import 'package:facebookui/Widgets/first_page/add_post.dart';
import 'package:facebookui/Widgets/first_page/add_story.dart';
import 'package:facebookui/Widgets/first_page/posts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 5,),
          const AddPostWidget(),
          const SizedBox(height: 5,),
          customDivider,
          const SizedBox(height: 5,),
          const AddStoryWidget(),
          const SizedBox(height: 5,),
          customDivider,
          const PostsWidget(),
        ],
      ),
    );
  }
}
