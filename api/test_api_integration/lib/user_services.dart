import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'package:test_api_integration/user_model.dart';

String url ="https://jsonplaceholder.typicode.com/users";

   getUserFromApi() async {
    List userList=[];
    var response =await  http.get(Uri.parse(url));
    var data= jsonDecode(response.body); 

    // return UserModel.fromJson(data);  // for only object in reponse
    //for list in response use this 
    for (var mapItem in data) {
      userList.add(UserModel.fromJson(mapItem));
    } 
    print(userList);

    return userList;
  }