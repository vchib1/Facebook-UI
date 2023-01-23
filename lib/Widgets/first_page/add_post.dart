import 'package:facebookui/Constants/constants.dart';
import 'package:flutter/material.dart';
import '../../Constants/colors.dart';

class AddPostWidget extends StatelessWidget {
  const AddPostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: primaryColor,
            backgroundImage: NetworkImage(images[0]),
            radius: 24,
          ),
          const SizedBox(width: 10,),
          Flexible(
            child: Container(
              alignment: Alignment.centerLeft,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: greyColor)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Write something here...",),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          const Icon(Icons.image,size: 30,),
        ],
      ),
    );
  }
}
