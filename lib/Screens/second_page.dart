import 'package:facebookui/Widgets/first_page/posts.dart';
import 'package:facebookui/Widgets/second_page/category.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 10,),
            CategorySelect(),
            PostsWidget(),
          ],
        )
    );
  }
}
