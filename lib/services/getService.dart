

import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:trailgp/models/get.dart';

class UserService {
  String baseUrl = "https://jsonglaucoma.herokuapp.com/api";
 Future<List<User>> getPateints() async {
    List<User> usersList = [];
    Dio dio = new Dio();
    Response response = await dio.get("$baseUrl");
    var data = response.data;
    data.forEach((userItem) {
      User user = User.fromJson(userItem);
      usersList.add(user);
    });
    return usersList;
  } 
  
}