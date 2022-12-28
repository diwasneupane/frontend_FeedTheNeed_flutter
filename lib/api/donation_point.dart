import 'package:feedtheneed/api/http_services.dart';
// import 'package:feedtheneed/model/Map.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';

class DonationPointApi {
  Future<bool> updateDonationPoint() async {
    // MapData? contactUs;
    try {
      var url = baseUrl + donationpoint;
      var dio = HttpServices().getDioInstance();
      var response = await dio.patch(
        url,
      );
      debugPrint("sssss");
      debugPrint("Response12333: ${response.data}");
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      debugPrint("Error: ${e.toString()}");
    }
    return false;
  }
}
