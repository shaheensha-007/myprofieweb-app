import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/navigation_iteams.dart';

class Appbarweb extends StatelessWidget {
  const Appbarweb({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenHeight = ScreenSize.height;
    return  Container(
      height: ScreenHeight*0.1,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/appbar background.jpeg"),fit: BoxFit.cover)
      ),
      child: Row(
        children: [
          Container(height: ScreenHeight*0.15,
              child: Image.asset("assets/logo my profile.png",)),
          Spacer(),
          for(int i=0;i< navtittle.length;i++)
            Row(
              children: [
                Icon(navIcon[i]),
                TextButton(onPressed: (){
                }, child: Text(navtittle[i],style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),))
              ],
            )
        ],
      ),
    );
  }
}
