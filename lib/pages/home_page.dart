import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile_app/widgets/main_mobile.dart';
import 'package:my_profile_app/widgets/projects_tages.dart';
import 'package:text_scroll/text_scroll.dart';

import '../constants/Size.dart';
import '../constants/navigation_iteams.dart';
import '../constants/skills.dart';
import '../modelclass/projects_iteams.dart';
import '../widgets/appbar/appbarmobile.dart';
import '../widgets/appbar/appbarweb.dart';
import '../widgets/contant_with_me.dart';
import '../widgets/customTextfiled.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/main_web.dart';
import '../widgets/skills_pages/skills_mobile.dart';
import '../widgets/skills_pages/skills_web.dart';
import '../widgets/textformfields.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey>navbarkeys=List.generate(4, (index) =>GlobalKey());

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    final ScreenWidth = ScreenSize.width;
    final ScreenHeight = ScreenSize.height;
    return LayoutBuilder(
      builder: (context,constratints) {
        return Scaffold(
          key: scaffoldkey,
            backgroundColor: Colors.white,
            endDrawer:constratints.maxWidth>=ShaMindesktopWidth
          ?null
          :Drawermobile(),
            body: SingleChildScrollView(
              controller: scrollController,
            scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ///appbar
                  if(constratints.maxWidth>=ShaMindesktopWidth)
                    const Appbarweb()
                  else
                Appbarmobile(
                  onMenuTap: () {
                    scaffoldkey.currentState?.openEndDrawer();
                  }
                ),
                  TextScroll(
                    'Dear sir,I hope this email finds you well. I am writing to express my keen interest in the Flutter Developer position at osperb, as advertised on FlutterDeveloper and Django developer. With my strong background in Flutter development and passion for creating engaging and innovative mobile applications, I believe I am an ideal candidate for this role.I have 2 year of experience in mobile app development, with a specific focus on Flutter. I have successfully completed [mention relevant FursanCart,Pet Shop...that demonstrate my proficiency in building robust and user-friendly applications using Flutters framework. I possess a solid understanding of Dart programming language, Flutter widgets, and have hands-on experience with various libraries and tools within the Flutter ecosystem.In my previous role at Rootsys international Kottakal,or transwarranty finance limited kochi,I played a pivotal role in developing and launching several Flutter-based applications that received positive user feedback and high ratings on app stores. I have a strong eye for detail, and I am adept at writing clean and maintainable code that adheres to industry best practices. Additionally, I have experience collaborating with cross-functional teams, including designers and backend developers, to deliver seamless app experiences.What sets me apart is my ability to quickly grasp complex concepts, learn new technologies, and adapt to fast-paced environments. I am always eager to stay updated with the latest advancements in the mobile app development industry, and I actively participate in online communities and attend relevant conferences and workshops.I am excited about the opportunity to join the talented team at Osperb and contribute to your ongoing success. I believe my skills and experience align perfectly with your requirements, and I am confident in my ability to make an immediate impact. I am particularly drawn to Osperbs commitment to innovation, user experience, and creating products that truly make a difference in peoples lives.Enclosed is my resume, which provides additional details on my qualifications and achievements. I would appreciate the opportunity to further discuss how my skills can benefit Osperbs and contribute to its growth. I am available for an interview at your convenience, either in person or via phone/video call.Thank you for considering my application. I look forward to the possibility of working with the talented team at Osperbs and contributing to its mission of delivering exceptional mobile applications. Please find my contact information below, and I eagerly await your response.Sincerely, Mohammed shaheen pk contant: 8606648604',
                    mode: TextScrollMode.bouncing,
                    velocity: Velocity(pixelsPerSecond: Offset(150, 0)),
                    delayBefore: Duration(milliseconds: 500),
                    numberOfReps: 5,
                    pauseBetween: Duration(milliseconds: 50),
                    style: TextStyle(color: Colors.green),
                    textAlign: TextAlign.right,
                    selectable: true,
                  ),
                  ///Main
                  if(constratints.maxWidth>=ShaMindesktopWidth)
                 const Mainweb()
                  else
                    const Mainmobile(),
                  Divider(
                    thickness: 10,
                    // color: Colors.white,
                  ),
                  ///About
                  Container(
                    key:navbarkeys[1],
                    width: ScreenWidth,
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/2 bc.png"),fit: BoxFit.cover)
                    ),
                    child:Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        const  Text("What I Can Do",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(
                         height: 50,
                       ),
                       if(constratints.maxWidth>=ShaMindesktopWidth)
                        const Skillsweb()
                        else
                          const Skllsmobile(),
                        SizedBox(
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 10,
                  ),
                  Container(
                    key:navbarkeys[2] ,
                    width: ScreenWidth,
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/3 bac.png"),fit: BoxFit.cover)
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Working Projects",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ConstrainedBox(constraints: BoxConstraints(maxWidth: 800),
                        child: Wrap(
                         spacing: 25,
                          runSpacing: 25,
                          children: [
                            for(int i=0; i<myprojects.length;i++)
                              ProjectsTages(projects: myprojects[i],),

                          ],
                        ),),
                        SizedBox(
                          height: 200,
                        ),
                    ],),
                  ),
                  Divider(
                    thickness: 10,
                  ),
                  CustomTextformfiled(),
                  SizedBox(
                    height: 5,
                  ),
                  Contantwithme(),
                ]),
            ),
        );
      }
    );
  }
}
