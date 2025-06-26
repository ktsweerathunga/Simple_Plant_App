import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/data/models/plant_models.dart';

class PlantDetailView extends StatelessWidget {
  const PlantDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final Plant plant = Get.arguments;

    return Scaffold(
      backgroundColor: const Color(0xFF1A1B1A),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              plant.imageUrl,
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            plant.name,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend',
            ),
          ),
          const SizedBox(height: 12),
          Text(
            plant.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Lexend',
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Chip(label: Text(plant.category)),
              const SizedBox(width: 10),
              Chip(label: Text(plant.region)),
              const SizedBox(width: 10),
              if (plant.isEndemic)
                const Chip(
                  label: Text("Endemic"),
                  backgroundColor: Colors.green,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
