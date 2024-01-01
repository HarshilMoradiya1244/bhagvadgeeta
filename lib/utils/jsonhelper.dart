import 'dart:convert';
import 'package:flutter/services.dart';
import '../screen/home/model/home_model.dart';

class JsonHelper {
  Future<List<HomeModel>> homeJsonToList() async {
    var jsonString =
    await rootBundle.loadString('assets/json/bhagvatgeeta.json');
    List homeData = jsonDecode(jsonString);
    List<HomeModel> dataList =
    homeData.map((e) => HomeModel.mapToModel(e)).toList();
    return dataList;
  }
}