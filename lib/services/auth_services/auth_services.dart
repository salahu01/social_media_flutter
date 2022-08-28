import 'dart:convert';
import 'dart:developer';

import 'package:social_media/services/api/api.dart';
import 'package:http/http.dart' as http;

class AuthServices extends Api {
  logIn({required String email, required String password}) async {
    try {
      var response = await http.post(
        Uri.parse('$uriAndroid/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(
          {"email": email, "password": password},
        ),
      );
      log(response.body);
      return response;
    } catch (e) {
      log(' exception = ${e.toString()}');
      return e.toString();
    }
  }

  signUp(
      {required String userName,
      required String email,
      required String password}) async {
    log('i am worked');
    try {
      var response = await http.post(
        Uri.parse('$uriAndroid/auth/signup'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(
          {"name": userName, "email": email, "password": password},
        ),
      );
      log(response.body);
      return response;
    } catch (e) {
      log(' exception = ${e.toString()}');
      return e.toString();
    }
  }
}
