import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/modules/plant_list/plant_list_header.dart';
import '../../widgets/plant_card.dart';

class PlantListView extends StatelessWidget {
  const PlantListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const PlantListHeader(),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 16,
            children: const [
              PlantCard(
                name: 'Peperomia Houseplant',
                imageUrl: 'https://placehold.co/224x307',
                gradient: [Color(0xFFD5EBCB), Color(0xFF9CED6B), Color(0xFF579133)],
              ),
              PlantCard(
                name: 'Crassula Houseplant',
                imageUrl: 'https://placehold.co/246x337',
                gradient: [Color(0xFFD5EBCB), Color(0xFF9CED6B), Color(0xFF579133)],
              ),
              PlantCard(
                name: 'Peperomia Houseplant',
                imageUrl: 'https://placehold.co/232x318',
                gradient: [Color(0xFFD5EBCB), Color(0xFF739B61)],
              ),
              PlantCard(
                name: 'Crassula Houseplant',
                imageUrl: 'https://placehold.co/309x309',
                gradient: [Color(0xFFD5EBCB), Color(0xFF739B61)],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
