import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainmobile extends StatelessWidget {
  const Mainmobile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    return Container(
      height: ScreenHeight*0.8,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/my photo.jpeg"),fit: BoxFit.cover)
      ),
      child: Padding(
        padding:EdgeInsets.only(left: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Hi\n Im MOHAMMED SHAHEEN PK\n A FLUTTER DEVELOPER",style:TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.bold,height: 1.5),
                ),
                SizedBox(
                  height:5,
                ),
                Row(
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                    ),onPressed: (){}, child: Text("GET DATA",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),)),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                    ),onPressed: (){}, child: Row(
                      children: [
                        Text("RESUME",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                       SizedBox(
                         width: 5,
                       ),
                        Icon(Icons.file_download_outlined,color: Colors.white,),
                      ],
                    )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
