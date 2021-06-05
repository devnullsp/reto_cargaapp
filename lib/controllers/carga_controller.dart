import 'package:get/get.dart';
import 'package:reto_cargaapp/providers/funciones_pesadas.dart';

import '../rutas.dart';

//Este controlador se puede hacer de dos modos distintos
//por un lado usando el observable "estado".
//por otro el StateMixin.
class CargaController extends GetxController with StateMixin {
  final estado = 0.0.obs;

  @override
  onInit() {
    configurarStateMixin();
    super.onInit();
  }

  configurarObservable() async {
    estado.value = 0.3;
    await llamadaPesada1();
    estado.value = 0.6;
    await llamadaPesada2();
    estado.value = 0.9;
    await llamadaPesada1();
    Get.offAndToNamed(Routes.HOME);
  }

  configurarStateMixin() async {
    change(0.3, status: RxStatus.success());
    await llamadaPesada1();
    change(0.6, status: RxStatus.success());
    await llamadaPesada2();
    change(0.9, status: RxStatus.success());
    await llamadaPesada1();
    //change(null, status: RxStatus.error("Error interno!."));
    //await 3.delay();
    Get.offAndToNamed(Routes.HOME);
  }
}
