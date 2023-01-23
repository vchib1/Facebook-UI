import 'package:facebookui/Constants/colors.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: postsModel.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(postsModel[index].avatar),
                ),
                title: Text(postsModel[index].name),
                subtitle: Row(
                  children: [
                    Text(postsModel[index].time),
                    const Text(" . "),
                    const Icon(Icons.place,size: 16,)
                  ],
                ),
                trailing: const Icon(Icons.more_horiz),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 8.0,right: 8.0),
                child: Text(postsModel[index].caption),
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(postsModel[index].postImage),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.thumb_up,color: primaryColor,),
                        Text("${postsModel[index].likes.toString()} likes"),
                      ],
                    ),
                    Text("${postsModel[index].comments.toString()} comments"),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){

                        },
                        icon: const Icon(Icons.thumb_up_alt_outlined),
                      ),
                      const SizedBox(width: 5,),
                      const Text("Like")
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.messenger_outline_sharp),
                      SizedBox(width: 5,),
                      Text("Comment")
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.send),
                      SizedBox(width: 5,),
                      Text("Send")
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              customDivider,
            ],
          ),
        );
      },
    );
  }
}
