import 'dart:convert';
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class PostPateint
{
  final fullName ,age , nationality  ,geneticHistory , phoneNumber  , testResult;
 // File file;
  PostPateint({this.fullName,this.age,this.nationality,this.geneticHistory,this.phoneNumber,this.testResult,
  //required this.file
  });
postPateintInfo() async
{
 var baseUrl = "https://jsonglaucoma.herokuapp.com/api/";
var postEndPoint= "create";
var response= await http.post(Uri.parse("$baseUrl$postEndPoint"),body: {
  "name":fullName,
  "age":age,
  "nationality":nationality,
  "geneticHistory":geneticHistory,
  "phone_num":phoneNumber,
  "test_result":testResult,
  "image":"https://jsonglaucoma.herokuapp.com/media/images/ali/brain.jpg"
  


});
var responsebody=jsonDecode(response.body);
print(responsebody);
return responsebody;
}

}