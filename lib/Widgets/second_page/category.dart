import 'package:facebookui/Providers/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Constants/colors.dart';

class CategorySelect extends StatelessWidget {
  const CategorySelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> categoryList = ["For You","Live","Music","Gaming","Following","Saved"];

    return Column(
      children: [
        AppBar(
          title: const Text("Watch",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                CircleAvatar(
                  radius: 18,
                  backgroundColor: greyColor,
                  child: Icon(Icons.people,color: Colors.white,),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: greyColor,
                  child: Icon(Icons.search,color: Colors.white,),
                ),
                SizedBox(width: 10,),
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            itemCount: categoryList.length,
            itemExtent: 100,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              int selected = Provider.of<CategoryProvider>(context,listen:true).selected;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Provider.of<CategoryProvider>(context,listen:false).getIndex(index);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selected == index ? Colors.cyan.shade100 : Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text(categoryList[index]),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
