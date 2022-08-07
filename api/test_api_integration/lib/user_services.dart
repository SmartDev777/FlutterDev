import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_api_integration/user_model.dart';
import 'package:test_api_integration/webresponse_model.dart';

String url = "https://jsonplaceholder.typicode.com/users";

getUserFromApi() async {
  List userList = [];
  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body);

  // return UserModel.fromJson(data);  // for only object in reponse
  //for list in response use this
  for (var mapItem in data) {
    userList.add(UserModel.fromJson(mapItem));
  }
  print(userList);

  return userList;
}

getUserList() async {
  var response = await http.get(Uri.parse(urlLive));
  var data = jsonDecode(response.body);
  // print(data);
  // var responseData = WebResponse.fromJson(data);
  // print(responseData);
  return WebResponse.fromJson(data);
}

String urlLive = "https://maaz-api.tga-edu.com/api/users";

postApi() async {
  Map<String, dynamic> body = {
    'name': 'touseeq',
    'email': 'dev@test.com',
    'username': 'test123',
    'id': '40'
  };
  print(body);
  var response = await http.post(Uri.parse(urlLive), body: body);
  // var data = jsonDecode(response.body);
  print(response.body);
}

putApi() async {
  String urlLive = "https://maaz-api.tga-edu.com/api/users/40";

  Map<String, dynamic> body = {
    'name': 'touseeq',
    'email': 'dev@test.com',
    'username': 'test1234'
  };
  print(body);
  var response = await http.put(Uri.parse(urlLive), body: body);
  // var data = jsonDecode(response.body);
  print(response.body);
}

DeleteApi() async {
  String urlLive = "https://maaz-api.tga-edu.com/api/users/40";
  var response = await http.delete(Uri.parse(urlLive));
  // var data = jsonDecode(response.body);
  print(response.body);
}

postModelApi(UserModel model) async {
  print(model.toJson());
  Map<String, String> header = {
    "Content-type": "application/json",
    "Accept": "application/json"
  };
  var response = await http.post(Uri.parse(urlLive),
      body: jsonEncode(model.toJson()), headers: header);
  // var data = jsonDecode(response.body);
  print(response.body);
}
