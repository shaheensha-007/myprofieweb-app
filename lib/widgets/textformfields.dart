import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/Size.dart';
import 'customTextfiled.dart';

class CustomTextformfiled extends StatelessWidget {
  const CustomTextformfiled({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    return Container(
      height: ScreenHeight,
      width: ScreenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage("assets/4 bac.jpg"),fit: BoxFit.cover)
      ),
      child: Column(
        children: [
          Text("GET TOUCH",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 24,color: Colors.white),),
          const  SizedBox(
            height: 50,
          ),
          ConstrainedBox(constraints: BoxConstraints(maxWidth: 700,maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constratints){
                if(constratints.maxWidth>=ShaMindesktopWidth){
                  return bulidNameEmailfieldDesktop();
                }
                return bulidNameEmailfieldMobile();
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextfield(
              hintText: "your Addaress",
              maxLine: 10,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500 ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Get Touch")),
            ),
          ),
        ],
      ),
    );
  }
  Row bulidNameEmailfieldDesktop(){
    return Row(
      children: [
        /// Name
        Flexible(
          child: CustomTextfield(
            hintText: "your name",
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        /// email
        Flexible(
          child: CustomTextfield(
            hintText: "your email",
          ),
        ),
      ],
    );
  }
  Column bulidNameEmailfieldMobile(){
    return Column(
      children: [
        /// Name
        Flexible(
          child: CustomTextfield(
            hintText: "your name",
          ),
        ),
        const SizedBox(
          height: 20,
          width: 15,
        ),
        /// email
        Flexible(
          child: CustomTextfield(
            hintText: "your email",
          ),
        ),
      ],
    );
  }
}
