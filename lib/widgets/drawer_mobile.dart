import 'package:flutter/material.dart';

import '../constants/navigation_iteams.dart';

class Drawermobile extends StatelessWidget {
  const Drawermobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/appbar background.jpeg"),fit: BoxFit.cover)
        ) ,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 20 ,bottom: 20),
                child: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon: Icon(Icons.close),color: Colors.black,),
              ),
            ),
            for(int i=0; i<navIcon.length;i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: TextStyle(
                  color: Colors.white24,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                onTap: (){

                },
                leading:  Icon(navIcon[i],color: Colors.black,),
                title: Text(navtittle[i],style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
              )
          ],
        ),
      ),
    );
  }
}
