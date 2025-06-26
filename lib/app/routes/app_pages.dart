import 'package:get/get.dart';
import '../modules/plant_list/plant_list_view.dart';
import '../modules/plant_detail/plant_detail_view.dart';
import '../modules/welcome/welcome_view.dart';

class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => const WelcomeView()),
    GetPage(name: '/plant-list', page: () => PlantListView()),
    GetPage(name: '/plant-detail', page: () => const PlantDetailView()),
  ];
}
