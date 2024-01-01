import 'package:flutter/cupertino.dart';
import '../../../utils/jsonhelper.dart';
import '../../../utils/share_helper.dart';
import '../model/home_model.dart';

class HomeProvider with ChangeNotifier{

  List<HomeModel> emptyList = [];
  bool isLight = true;


  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<HomeModel> home = await jsonHelper.homeJsonToList();
    emptyList = home;
    notifyListeners();
  }

  void changeThem() async {
    ShareHelper shr = ShareHelper();
    bool? isTheme = await shr.getTheme();
    isLight = isTheme ?? false;
    notifyListeners();
  }

}