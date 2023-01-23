import 'package:facebookui/Constants/constants.dart';
import 'package:facebookui/Widgets/fourth_page/profile_pic.dart';
import 'package:facebookui/Widgets/fourth_page/user_info.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            title: Text(names[0],style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            actions: const [
              CircleAvatar(
                radius: 16,
                backgroundColor: greyColor,
                child: Icon(Icons.person,color: Colors.black,),
              ),
              SizedBox(width: 10,),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ProfilePic(),
          ),
          const SizedBox(height: 10,),
          const ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundColor: primaryColor,
              child: Icon(Icons.lock_rounded,color: Colors.white,),
            ),
            title: Text("You locked your profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Text("Learn more",style: TextStyle(color: Colors.blue,fontSize: 16),),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 3,
          ),
          const UserInfo(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text("Edit public details",style: TextStyle(color: Colors.blue.shade900),),
            ),
          )
        ],
      ),
    );
  }
}
