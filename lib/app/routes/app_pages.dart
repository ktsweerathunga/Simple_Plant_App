import 'package:get/get.dart';
import '../modules/welcome/welcome_view.dart';
import '../modules/plant_list/plant_list_view.dart';

class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => const WelcomeView()),
    GetPage(name: '/plant-list', page: () => const PlantListView()),
  ];
}
