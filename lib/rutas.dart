import 'package:get/get.dart';
import 'package:reto_cargaapp/controllers/carga_controller.dart';
import 'package:reto_cargaapp/pages/home_page.dart';
import 'package:reto_cargaapp/pages/splash_page.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const HOME = '/home';
}

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => PantallaCargaPage(),
        binding: PantallaCargaBinding()),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    )
  ];
}

class PantallaCargaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CargaController>(() => CargaController());
  }
}
