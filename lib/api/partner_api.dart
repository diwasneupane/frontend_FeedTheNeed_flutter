import 'package:dio/dio.dart';
import 'package:feedtheneed/api/http_services.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';

class PartnerApi {
  Future<List<dynamic>> getPartner() async {
    // Future.delayed(const Duration(seconds: 5), () {});
    List<dynamic> partnerList = [];

    try {
      var dio = HttpServices().getDioInstance();
      // dio.interceptors
      //     .add(DioCacheManager(CacheConfig(baseUrl: baseUrl)).interceptor);
      Response response = await dio.get(
        baseUrl + partner,
      );
      if (response.statusCode == 201) {
        debugPrint("data::::::::::::${response.data}");
        // debugPrint(response.data.toString());

        for (var data in response.data!) {
          partnerList.add(data);
        }
      }
    } catch (e) {
      throw Exception(e);
    }
    return partnerList;
  }
}
