import 'package:feedtheneed/api/http_services.dart';
// import 'package:feedtheneed/model/Map.dart';
import 'package:feedtheneed/model/mapmodel.dart';
import 'package:feedtheneed/response/map_response.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';

class MapApi {
  Future<List<MapData?>> getMapDetails() async {
    List<MapData?> contactList = [];
    // MapData? contactUs;
    try {
      var url = baseUrl + map;
      var dio = HttpServices().getDioInstance();
      var response = await dio.get(
        url,
      );
      debugPrint("sssss");
      debugPrint("Response12333: ${response.data}");
      if (response.statusCode == 201) {
        MapResponse contactModelResponse = MapResponse.fromJson(response.data);
        debugPrint("kooooooo");

        for (var data in contactModelResponse.data) {
          contactList.add(
            MapData(id: data!.id, lat: data.lat, long: data.long),
          );
        }
      }
    } catch (e) {
      debugPrint("Error: ${e.toString()}");
    }
    debugPrint("kkkkkk$contactList");
    return contactList;
  }
}
