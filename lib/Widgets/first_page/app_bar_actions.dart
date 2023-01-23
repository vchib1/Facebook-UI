import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        CircleAvatar(
          radius: 18,
          backgroundColor: greyColor,
          child: Icon(Icons.search,color: Colors.white,),
        ),
        SizedBox(width: 10,),
        CircleAvatar(
          radius: 18,
          backgroundColor: greyColor,
          child: Icon(Icons.messenger,color: Colors.white,),
        ),
        SizedBox(width: 10,),
      ],
    );
  }
}
