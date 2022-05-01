import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trailgp/Screens/pateintInfo.dart';
import 'package:trailgp/component/bottom_nav_bar.dart';
import 'package:trailgp/component/pateintcard.dart';
import 'package:trailgp/component/rounded_app_bar.dart';
import 'package:trailgp/constant.dart';
import 'package:trailgp/models/get.dart';
import 'package:trailgp/services/getService.dart';

class AddPateint extends StatefulWidget {
  const AddPateint({ Key? key }) : super(key: key);

  @override
  State<AddPateint> createState() => _AddPateintState();
}

class _AddPateintState extends State<AddPateint> {
   bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = await UserService().getPateints();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackgroundColor ,
      appBar: RoundAppBar(),
      body:Stack(
        children: [
          Scaffold(
            body:
            loading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
             padding: EdgeInsets.fromLTRB(40, 50, 40, 20),
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(0),
                  child:PateintCard(pateintName:" ${users[index].name}",pateintAge:users[index].age ,),
                );
              }, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
            ),
          ),
          Column(
            children:[
              Spacer(),
         Row(
           children :[
             Spacer(),
             Padding(
               padding: const EdgeInsets.fromLTRB(0, 0,30, 105),
              child: FloatingActionButton(
        onPressed: (){
                Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => PateintInfo( )),
                   );
        },

        child: SvgPicture.asset("assets/icons/addicon.svg"),
        
      ),
             ),
           ]
         ),]),
           
          
          const MyBottomNavBar()
        ],
      ),
    );
  }
}