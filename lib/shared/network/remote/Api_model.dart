import 'dart:convert';

import '../../../models/NewsSourse.dart';
import '../../../models/Sourse.dart';
import '../../constant/constant_shered.dart';
import 'package:http/http.dart'as http;
class ApiModel {


  static Future<MainSourse> getSources() async {
    // call api
    var uri = Uri.https(
        BASEURl, '/v2/top-headlines/sources', {"apikey": APIKEY});
    var response = await http.get(uri);
    try {
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourcesResponse = MainSourse.fromJson(json);
      return sourcesResponse;
    } catch (e) {
      throw e;
    }
  }
  static Future<NewsSourse> getArticles(Sources sources) async {
    // call api
    var uri = Uri.https(
        BASEURl, '/v2/top-headlines/sources', {"apikey": APIKEY,"sources":sources.id});
    var response = await http.get(uri);
    try {
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var newsResponse = NewsSourse.fromJson(json);
      return newsResponse;
    } catch (e) {
      throw e;
    }
  }
}