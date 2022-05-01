// import 'dart:ffi';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';


// class IcomaImage extends StatefulWidget {
//   const IcomaImage({ Key? key }) : super(key: key);

//   @override
//   State<IcomaImage> createState() => _IcomaImageState();
// }

// class _IcomaImageState extends State<IcomaImage> {
//    File? _image;

//   Future getImagefromcamera() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.camera);

//     setState(() {
//       _image =image;
//     });
//   }

//   Future getImagefromGallery() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       _image =image;
//     });
//   }
//   File returnPickedImage()
//   {
//     return  _image;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }