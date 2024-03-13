import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:needoo_task/model/my_model.dart';

class MyController with ChangeNotifier {
  Map<String, dynamic> decodedData = {};
  NeedooApi needooApiobj = NeedooApi();
  Future fetchData() async {
    notifyListeners();
    final url = Uri.parse(
        "https://test.needoo.in/calculate_distance/9785641253/10.9916/76.0103/?format=api");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      decodedData = jsonDecode(response.body);
      print(decodedData);
      needooApiobj = NeedooApi.fromJson(decodedData);
    } else {
      print("api failed");
    }
    notifyListeners();
  }

  //post
  Future postDAta({required String EmpName, required String des}) async {
    final url = Uri.parse(
        "https://test.needoo.in/calculate_distance/9785641253/10.9916/76.0103/?format=api");
    final response = await http
        .post(url, body: {"employee_name": EmpName, "designation": des});
    if (response.statusCode == 200) {
      await fetchData();
    } else {
      print("api failed");
    }
  }

  //update
  Future updateDAta(
      {required String id,
      required String EmpName,
      required String des}) async {
    final url = Uri.parse(
        "https://test.needoo.in/calculate_distance/9785641253/10.9916/76.0103/?format=api");
    final response = await http
        .put(url, body: {"employee_name": EmpName, "description": des});
    if (response.statusCode == 200) {
      await fetchData();
    } else {
      print("api failed");
    }
  }
}
