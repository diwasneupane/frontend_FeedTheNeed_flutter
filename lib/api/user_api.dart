import 'dart:io';

import 'package:dio/dio.dart';
import 'package:feedtheneed/api/http_services.dart';
import 'package:feedtheneed/model/profile.dart';
import 'package:feedtheneed/response/user_response.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/model/user.dart';
import 'package:flutter/material.dart';

class UserAPI {
  Future<bool> registerUser(User user) async {
    bool isSignUp = false;
    Response response;
    var url = baseUrl + registerUrl;
    var dio = HttpServices().getDioInstance();
    try {
      response = await dio.post(
        url,
        data: user.toJson(),
      );
      if (response.data["msg"] == "Email already exists") {
        return false;
      } else if (response.statusCode == 200) {
        debugPrint(response.data["msg"].toString());
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return isSignUp;
  }

  Future<bool> login(String email, String password) async {
    bool isLogin = false;

    try {
      // var url = baseUrl + loginUrl;
      var dio = HttpServices().getDioInstance();
      var response = await dio.post(
        loginUrl,
        data: {
          "email": email,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        LoginResponse loginResponse = LoginResponse.fromJson(response.data);
        // print(loginResponse.msg);
        token = loginResponse.token;
        if (token != null) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("token", token!);
          isLogin = true;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return isLogin;
  }

  Future<UserProfile?> getUserDetails() async {
    UserProfile? user;
    try {
      var url = baseUrl + profile;
      var dio = HttpServices().getDioInstance();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");
      debugPrint("Token123: ${token!}");
      var response = await dio.get(
        url,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        ),
      );
      debugPrint("sssss");
      debugPrint("Response123: ${response.data}");
      if (response.statusCode == 200) {
        user = UserProfile.fromJson(response.data);
      }
    } catch (e) {
      debugPrint("Error: ${e.toString()}");
    }
    return user;
  }

  Future<bool> updateUserProfile(UserProfile userProfile) async {
    // String fileName = image!.path.split('/').last;
    // debugPrint("FileName: " + fileName);
    // debugPrint("Image Path: " + image.path.toString());
    debugPrint("Use Update: ${userProfile.firstname!}");
    bool isUpdated = false;
    FormData data = FormData.fromMap({
      "firstname": userProfile.firstname,
      "lastname": userProfile.lastname,
      // "age": userProfile.age,
      "username": userProfile.username,
      "phone": userProfile.phone,
      "address": userProfile.address,
      "dob": userProfile.dob,
      // "pat_img": await MultipartFile.fromFile(
      //   image.path,
      //   filename: fileName,
      // ),
    });
    try {
      var url = baseUrl + update;
      var dio = HttpServices().getDioInstance();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");
      var response = await dio.put(
        url,
        data: data,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        ),
      );
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      debugPrint("Error updating user profile: $e");
    }

    return isUpdated;
  }
}