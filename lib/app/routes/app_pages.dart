import 'package:get/get.dart';

import '../bindings/details_binding.dart';
import '../bindings/home_binding.dart';
import '../screen/details/details_page.dart';
import '../screen/home/home_page.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.DETAILS,
        page: () => const DetailsPage(),
        binding: DetailsBinding()),
  ];
}

class Routes {
  static const INITIAL = '/';
  static const DETAILS = '/details';
}
