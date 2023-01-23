import 'package:facebookui/Constants/constants.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: userInfoModel.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(userInfoModel[index].icon),
          title: Row(
            children: [
              Text(userInfoModel[index].firstLine,style: TextStyle(color: Colors.grey.shade700),),
              Text(userInfoModel[index].secondLine,style: const TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        );
      },
    );
  }
}
