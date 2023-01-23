import 'package:facebookui/Constants/colors.dart';
import 'package:facebookui/Screens/second_page.dart';
import 'package:facebookui/Widgets/first_page/app_bar_actions.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';
import 'fourth_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("facebook",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: primaryColor),),
          actions: const [
            AppBarActions(),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(
                indicatorColor: primaryColor,
                unselectedLabelColor: greyColor,
                labelColor: primaryColor,
                tabs: [
                  Tab(icon: Icon(Icons.home,size: iconSize,),),
                  Tab(icon: Icon(Icons.tv,size: iconSize,),),
                  Tab(icon: Icon(Icons.sell,size: iconSize,),),
                  Tab(icon: Icon(Icons.person,size: iconSize,),),
                  Tab(icon: Icon(Icons.notifications,size: iconSize,),),
                  Tab(icon: Icon(Icons.perm_identity_outlined,size: iconSize,),),
                ]
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
            FourthPage(),
          ],
        ),
      ),
    );
  }
}
