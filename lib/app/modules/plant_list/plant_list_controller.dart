import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/data/models/plant_models.dart';

class PlantListController extends GetxController {
  var plants = <Plant>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadPlants();
  }

  Future<void> loadPlants() async {
    final jsonStr = await rootBundle.loadString('assets/data/plants.json');
    final List list = jsonDecode(jsonStr);
    plants.value = list.map((e) => Plant.fromJson(e)).toList();
  }
}
