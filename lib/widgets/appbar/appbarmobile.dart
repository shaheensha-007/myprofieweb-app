import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbarmobile extends StatelessWidget {
  const Appbarmobile({super.key,this.onMenuTap});
 final VoidCallback?onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/appbar background.jpeg"),fit: BoxFit.cover),
        color: Colors.black
      ),
      child: Row(
        children: [
          Image(image: AssetImage("assets/logo my profile.png")),
          Spacer(),
          IconButton(onPressed:onMenuTap , icon:const Icon(Icons.menu),color: Colors.black,),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
