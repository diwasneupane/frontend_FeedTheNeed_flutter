import 'dart:io';

import 'package:dio/dio.dart';
import 'package:feedtheneed/api/http_services.dart';
import 'package:feedtheneed/model/user_transaction.dart';
import 'package:feedtheneed/response/user_transaction_response.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';

class UserTransactionApi {
  Future<List<UserTransaction?>> userTransactionDetails() async {
    List<UserTransaction?> transactionList = [];
    // ContactUsData? contactUs;
    try {
      var url = baseUrl + usertransaction;
      var dio = HttpServices().getDioInstance();
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // String? token = prefs.getString("token");
      // debugPrint("Token123: ${token!}");
      var response = await dio.get(
        url,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        ),
      );
      debugPrint("sssss");
      debugPrint("Response12333: ${response.data}");
      if (response.statusCode == 201) {
        UserTransactionResponse userTransactionResponse =
            UserTransactionResponse.fromJson(response.data);
        debugPrint("kooooooo");

        for (var data in userTransactionResponse.data) {
          transactionList.add(
            UserTransaction(
              id: data!.id,
              user_id: data.user_id,
              donation_amount: data.donation_amount,
              donation_category: data.donation_category,
              donor_name: data.donor_name,
              donor_note: data.donor_note,
              donor_address: data.donor_address,
              idx: data.idx,
              token: data.token,
              created_at: data.created_at,
              donation_status: data.donation_status,
            ),
          );
        }
      }
    } catch (e) {
      debugPrint("Error: ${e.toString()}");
    }
    debugPrint("kkkkkk$transactionList");
    return transactionList;
  }
}
