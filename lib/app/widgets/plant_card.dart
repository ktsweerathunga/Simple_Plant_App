import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final List<Color> gradient;

  const PlantCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217,
      height: 328,
      clipBehavior: Clip.antiAlias,
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
            left: 16.28,
            top: 260.54,
            child: SizedBox(
              width: 120,
              child: Text(
                name,
                style: const TextStyle(
                  color: Color(0xFF304022),
                  fontSize: 16.28,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 261.90,
            child: Container(
              width: 38,
              height: 36.64,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.50, -0.43),
                  end: Alignment(0.50, 1.20),
                  colors: gradient,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.43),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 23.07,
                    offset: Offset(0, 10.86),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
