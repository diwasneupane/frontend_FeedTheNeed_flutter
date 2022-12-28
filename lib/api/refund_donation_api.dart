import 'package:dio/dio.dart';
import 'package:feedtheneed/api/http_services.dart';
import 'package:feedtheneed/model/refund_model.dart';
import 'package:feedtheneed/response/refund_request_response.dart';
import 'package:feedtheneed/utils/api_url.dart';

import 'package:flutter/material.dart';

class RefundRequestApi {
  Future<RefundModel?> getRefundRequest(String transactionId) async {
    Future.delayed(const Duration(seconds: 2), () {});
    RefundRequestResponse? refundRequestResponse;
    RefundModel? refundRequest;
    try {
      var dio = HttpServices().getDioInstance();

      Response response =
          await dio.get(baseUrl + refundrequest + transactionId);
      debugPrint("ResundRequest response:${response.data}");
      if (response.statusCode == 201) {
        // debugPrint(response.data.toString());
        refundRequestResponse = RefundRequestResponse.fromJson(response.data);
        refundRequest = RefundModel();
        debugPrint("asdbh");
      } else {
        refundRequest = null;
      }
    } catch (e) {
      throw Exception(e);
    }
    return refundRequest;
  }
}
