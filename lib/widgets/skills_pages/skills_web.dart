import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants/skills.dart';

class Skillsweb extends StatelessWidget {
  const Skillsweb({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for(int i=0; i<platformItems.length;i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color:Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const  EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    leading: Image.asset(platformItems[i]["img"],scale:ScreenHeight/600,),
                    title: Text(platformItems[i]["title"]),
                  ),
                )
            ],
          ),),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 500),
          child: Wrap(
            spacing: 10.0,
            runSpacing:10.0,
            children: [
            for(int i=0; i<mainskills.length;i++)
              Chip(padding:  const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
               shadowColor: Colors.transparent,
          label: Text(mainskills[i]["title"]),)
            ],
          ),
          ),
        )
      ],
    );
  }
}
