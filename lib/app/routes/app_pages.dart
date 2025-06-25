import 'package:get/get.dart';
import '../modules/welcome/welcome_view.dart';

class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => const WelcomeView()),
    // Add other screens here
  ];
}
