import 'package:facebookui/Constants/colors.dart';
import 'package:flutter/material.dart';
import '../../Constants/constants.dart';

class AddStoryWidget extends StatelessWidget {
  const AddStoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: 120,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                  image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.cover
                  )
                ),
              ),
              index != 0 ? const SizedBox()
                  :
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 70,
                  width: 120,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text("Create Story",style: TextStyle(fontSize: 12),),
                ),
              ),
              index == 0 ?
              const Positioned(
                bottom: 55,
                left: 40,
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: primaryColor,
                    child: Icon(Icons.add,size: 35,color: Colors.white,),
                  ),
                )
              )
                  :
              Positioned(
                top: 12,
                left: 12,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(images[index])
                  ),
                ),
              ),
              index == 0 ?
              const SizedBox()
                  :
              Positioned(
                bottom: 15,
                left: 15,
                child: Text(names[index],style: const TextStyle(color: Colors.white,fontSize: 14),)
              ),
            ],
          );
        },
      ),
    );
  }
}
