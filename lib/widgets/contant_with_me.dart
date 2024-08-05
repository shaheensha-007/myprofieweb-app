import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:js'as js;

import 'package:my_profile_app/constants/contant_links.dart';

class Contantwithme extends StatelessWidget {
  const Contantwithme({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(constraints: BoxConstraints(maxWidth:300),
        child: Divider(),),
         Wrap(
           spacing: 15,
           runSpacing: 15,
           alignment: WrapAlignment.center,
           children: [
        InkWell(onTap: (){
           js.context.callMethod("open",[shaheenlinks.whatapp]);
        },
        child: Image.asset("assets/whatapp.png",width: 50,)),
             SizedBox(
               width: 5,
             ),
             InkWell(onTap: (){
               js.context.callMethod("open",[shaheenlinks.github]);
             },
                 child: Image.asset("assets/git hub png.png",width: 50,)),
             SizedBox(
               width: 5,
             ),
             InkWell(onTap: (){
               js.context.callMethod("open",[shaheenlinks.figma]);
             },
                 child: Image.asset("assets/whatapp.png",width: 50,)),

           ],
         )
      ],
    );
  }
}
