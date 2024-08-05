import 'package:flutter/material.dart';

import '../pages/Pdf_View/Pdf_view.dart';

class Mainweb extends StatelessWidget {
  const Mainweb({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenHeight = ScreenSize.height;
    return Container(
      height: ScreenHeight*0.8,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/main page.png"),fit: BoxFit.cover)
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
                    ),onPressed: (){
                    }, child: Text("GET DATA",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),)),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyPdfViewer(pdfPath:"assets/MOHAMMED SHAHEEN PK (2).pdf" ,)));
                    }, child: Row(
                      children: [
                        Text("RESUME",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.file_download_outlined,color: Colors.white,)
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
