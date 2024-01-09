import 'dart:convert';
import 'dart:developer';

import 'package:codemehubtest/data/api/login_response.dart';
import 'package:codemehubtest/ui/util/app_url.dart';
import 'package:http/http.dart' as http;

class APIService{
  Future<LoginResponse?>login(String username,String password)async{
    try{
      var response=await http.Client().post(Uri.parse(AppUrls.loginUrl),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
          body: jsonEncode({
            "username": username,
            "password": password,
          }));


      log("API>>>URL>>${AppUrls.loginUrl}<<<RES>>>${response.body}<<<REQ>>>${jsonEncode({
        "username": username,
        "password": password,
      })}");

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(json.decode(response.body));
      } else if (response.statusCode == 201) {
        return LoginResponse.fromJson(json.decode(response.body));
      } else if (response.statusCode == 401) {
        return LoginResponse(code: 401);
      } else {
        return LoginResponse(code: 500);
      }

    }catch(e){
      log("Error in API$e");
      if (e.toString().startsWith("SocketException") ||
          e.toString().startsWith("Failed host lookup")) {
        //no inter net case
        return LoginResponse(code: 503);
      } else {
        return LoginResponse(code: 500);
      }
    }
  }
}