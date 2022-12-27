import 'dart:convert';

import 'package:uts/1_onlineshop_model.dart';
import 'package:http/http.dart' as http;

class OnlineshopService {
  Future<List<Onlineshop>> findAll(int page, int num) async {
    final List<Onlineshop> onlineshops = [];

    try {
      http.Response response = await http.get(
        Uri.parse(
            'https://raw.githubusercontent.com/raditya2010631170111/df_20111/main/onlineshop.json'),
      );
      final result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        for (var item in result['data']) {
          onlineshops.add(Onlineshop.fromJson(item));
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      // log(error.toString()); //TODO: make a message pop up when error appear
      throw http.ClientException(error.toString());
    }
    return onlineshops;
  }
}
