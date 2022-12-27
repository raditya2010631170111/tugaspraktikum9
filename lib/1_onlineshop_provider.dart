import 'package:flutter/material.dart';
import 'package:uts/1_onlineshop_model.dart' as model;
import 'package:uts/1_onlineshop_service.dart';

class OnlineshopProvider extends ChangeNotifier {
  List<model.Onlineshop> onlineshops = [];
  int page = 1;
  final onlineshopService = OnlineshopService();

  Future<void> fetchOnlineshops() async {
    final ten = await onlineshopService.findAll(page, 10);
    onlineshops = [...onlineshops, ...ten];

    if (onlineshops.isEmpty) {
      page = 1;
    } else {
      page += 1;
    }
    notifyListeners();
  }
}
