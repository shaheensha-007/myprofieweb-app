import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modelclass/projects_iteams.dart';
import 'dart:js'as js;

class ProjectsTages extends StatelessWidget {
  const ProjectsTages({super.key, required this.projects});
  final Projectiteams projects;

  @override
  Widget build(BuildContext context) {
    return Container(
   clipBehavior: Clip.antiAlias,
      height: 280,
      width: 250,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: Column(
        children: [
        Image.asset(projects.image,
          height: 200,
          width: 250,
          fit: BoxFit.cover,),
          Text(
            projects.title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          Text(
            projects.subtitle,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 10),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if(projects.links!=null)
              TextButton(onPressed: (){
                js.context .callMethod("open",[projects.links]);
              }, child: Text("avaliable in",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.green),)),
            ],
          )
        ],
      ),

    );
  }
}
