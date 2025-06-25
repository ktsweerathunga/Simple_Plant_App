import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/data/models/plant_models.dart';

class PlantDetailView extends StatelessWidget {
  const PlantDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final Plant plant = Get.arguments;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 511,
            height: 1108,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1B1A),
              borderRadius: BorderRadius.circular(68),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x4C2E481E),
                  blurRadius: 112,
                  offset: Offset(-101.8, 137.6),
                ),
              ],
            ),
            child: Stack(
              children: [
                // Replace with dynamic values
                Positioned(
                  left: 25,
                  top: 720,
                  child: SizedBox(
                    width: 460,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plant.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          plant.description,
                          style: const TextStyle(
                            color: Color(0xFFB5B5B5),
                            fontSize: 14,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  right: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      plant.imageUrl,
                      height: 600,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Optional: Back button, share, etc.
              ],
            ),
          ),
        ],
      ),
    );
  }
}
