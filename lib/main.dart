import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trailgp/Screens/HomePage.dart';
import 'package:trailgp/Screens/addpateint.dart';
import 'package:trailgp/Screens/pateintInfo.dart';
import 'package:trailgp/component/card.dart';
import 'package:trailgp/component/rounded_app_bar.dart';
import 'Screens/image .dart';
import 'Screens/t.dart';
import 'component/bottom_nav_bar.dart';
import 'constant.dart';

void main() {
 
  runApp(const MyApp(),
   );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
       home:
       //UsersScreen()
       //MyHomePage(),
     //  TakeImage(),
      //PateintInfo(),
       AddPateint(),
    //Home() ,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:RoundAppBar(),
//       body:Center(
//        child: SingleChildScrollView(
//          scrollDirection: Axis.horizontal,
//          padding:EdgeInsets.symmetric(vertical: 10.0) ,
//          //child: HomePage(),
//        ),
//      ),
     
//       // bottomNavigationBar:Container(child:MyBottomNavBar()),
//     );
//   }
// }


