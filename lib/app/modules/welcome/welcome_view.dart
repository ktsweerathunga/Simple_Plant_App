import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          WelcomeContent(),
        ],
      ),
    );
  }
}

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1101.88,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF2E481E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(67.12),
        ),
        shadows: [
          const BoxShadow(
            color: Color(0x4C2E471E),
            blurRadius: 125.30,
            offset: Offset(-106.28, 154.38),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: -101.78,
            top: -176.41,
            child: Container(
              width: 712.42,
              height: 1101.88,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placehold.co/712x1102"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 111.27,
            top: 736.85,
            child: SizedBox(
              width: 294.47,
              height: 88.20,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Plant a tree',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF607840),
                        fontSize: 38,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '&',
                      style: TextStyle(
                        color: Color(0xFF99B66F),
                        fontSize: 38,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: ' \nsave our planet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Positioned(
            left: 97.70,
            top: 846.77,
            child: SizedBox(
              width: 320.25,
              child: Text(
                'Plant a tree and help us to cure our planet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF91A37F),
                  fontSize: 21.71,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            left: 143.84,
            top: 944.47,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.plantList);
              },
              child: Container(
                width: 222.55,
                height: 70.56,
                decoration: ShapeDecoration(
                  color: const Color(0xFF569033),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.86),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 43.42,
                      offset: Offset(0, 27.14),
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.43,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
