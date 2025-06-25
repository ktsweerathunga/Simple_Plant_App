import 'package:flutter/material.dart';

class PlantListHeader extends StatelessWidget {
  const PlantListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 508.87,
          height: 320,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(67.12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x4C2E471E),
                blurRadius: 125.30,
                offset: Offset(-106.28, 154.38),
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 85.17,
                top: 139.77,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateZ(3.14),
                  child: Container(
                    width: 59.39,
                    height: 75.99,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage("https://placehold.co/59x76"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19203901),
                          blurRadius: 19,
                          offset: Offset(0, 20.36),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 25.78,
                top: 150.63,
                child: Text(
                  'Hey Urvashi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF91A37F),
                    fontSize: 19,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Positioned(
                left: 25.78,
                top: 175.05,
                child: Text(
                  'Help Us To Save Our Mother Earth',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF394929),
                    fontSize: 24.43,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Positioned(
                left: 17.64,
                top: 227.98,
                child: FilterBar(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 474.95,
      height: 63.78,
      child: Row(
        children: [
          Container(
            width: 151.98,
            height: 46.14,
            margin: const EdgeInsets.only(left: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFF2F6ED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.28),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 14.93,
                  offset: Offset(0, 13.57),
                )
              ],
            ),
            alignment: Alignment.center,
            child: const Text(
              'Houseplants',
              style: TextStyle(
                color: Color(0xFF394929),
                fontSize: 19,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            'Evergreen trees',
            style: TextStyle(
              color: Color(0xFF394929),
              fontSize: 19,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            'Palm Tree',
            style: TextStyle(
              color: Color(0xFF394929),
              fontSize: 19,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
