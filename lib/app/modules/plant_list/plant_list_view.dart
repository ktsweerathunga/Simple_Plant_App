import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/modules/plant_list/plant_list_controller.dart';
import 'package:plant_app/app/widgets/plant_card.dart';
import 'plant_list_header.dart';

class PlantListView extends StatelessWidget {
  PlantListView({super.key});

  final ctrl = Get.put(PlantListController()); // This is GetX controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sri Lankan Plants')),
      body: Obx(() {
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const PlantListHeader(),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 16,
              children: ctrl.plants.map((plant) {
                return PlantCard(
                  name: plant.name,
                  imageUrl: plant.imageUrl,
                  gradient: plant.isEndemic
                      ? [Color(0xFF9FF16D), Color(0xFF558E32)]
                      : [Color(0xFFD5EBCB), Color(0xFF579133)],
                );
              }).toList(),
            ),
          ],
        );
      }),
    );
  }
}
