import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final List<Color> gradient;
  final VoidCallback? onTap;

  const PlantCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.gradient, 
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger tap
      child: Container(
        width: 217,
        height: 328,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.43),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 70.56,
              offset: Offset(0, 27.14),
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 16,
              top: 260,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF304022),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
