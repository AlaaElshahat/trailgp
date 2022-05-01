import 'package:flutter/material.dart';
import 'package:trailgp/component/bottom_nav_bar.dart';
import 'package:trailgp/component/card.dart';
import 'package:trailgp/component/rounded_app_bar.dart';
import 'package:trailgp/constant.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar:RoundAppBar(),
      body:Stack(
        children:[ Center(
         child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           padding:EdgeInsets.symmetric(vertical: 10.0) ,
           child:HomePage()
         ),
           ),
            const MyBottomNavBar()
           ]
      ),
     
    );
    
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> homeIcon = [
    "assets/icons/addicon.svg",
    "assets/icons/groupicon.svg",
    "assets/images/instruction.png"
  ];
  List<String> text = ['add Pateint', 'Pateints', 'instruction'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: HomeCard(homeIcon[0], text[0]),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: HomeCard(homeIcon[1], text[1]),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: HomeCard(homeIcon[2], text[2]),
        ),
      ],
    );
  }
}
