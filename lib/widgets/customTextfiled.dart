import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,
    this.Controller,
    this.maxLine=1,
    this.hintText
  });
  final TextEditingController? Controller;
  final int maxLine;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: Controller,
      maxLines:maxLine,
      style: TextStyle(color:Colors.grey),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          filled: true,
          fillColor: Colors.white30,
          focusedBorder: getInputBorder,
          enabledBorder:getInputBorder,
          border: getInputBorder,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
          )
      ),
    );
  }
  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none
    );
  }
}
