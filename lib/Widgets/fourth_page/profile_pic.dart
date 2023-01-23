import 'package:facebookui/Constants/colors.dart';
import 'package:facebookui/Constants/constants.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          //cover pic
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2074&q=80"),
                fit: BoxFit.cover
              )
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 18,
                      child: Icon(Icons.emoji_emotions),
                    ),
                    SizedBox(height: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.camera_alt,color: Colors.black,size: 26,),
                    ),
                  ],
                ),
              ),
            )
          ),
          //profile pic
          Positioned(
            left: 85,
            top: 150,
            child: CircleAvatar(
              radius: 105,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(images[0]),
              ),
            ),
          ),
          Positioned(
            top: 310,
            left: 250,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.camera_alt,color: Colors.black,size: 28,),
            ),
          ),
          //bottom name
          Positioned(
            top: 380,
            left: 120,
            child: Text(names[0],style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.add_box_rounded,color: Colors.white,),
                      Text("Add to story",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.edit),
                      Text("Edit Profile"),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.more_horiz),
                ),
              ],
            )
          ),

        ],
      ),
    );
  }
}
