// import 'package:flutter/material.dart';
// import 'package:trailgp/models/get.dart';
// import 'package:trailgp/services/getService.dart';


// class UsersScreen extends StatefulWidget {
//   @override
//   _UsersScreenState createState() => _UsersScreenState();
// }

// class _UsersScreenState extends State<UsersScreen> {
//   bool loading = true;
//   List<User> users = [];

//   getUserList() async {
//     users = await UserService().getUsers();
//     loading = false;
//     setState(() {});
//   }

//   @override
//   void initState() {
//     super.initState();
//     getUserList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Users Screen"),
//       ),
//       body: loading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: users.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child:Text( "${users[index].name}"),
//                 );
//               },
//             ),
//     );
//   }
// }