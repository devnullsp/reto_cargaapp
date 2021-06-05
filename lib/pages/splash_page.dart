import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_cargaapp/controllers/carga_controller.dart';

class PantallaCargaPage extends GetView<CargaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
            Text("Cargando la configuración..."),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: barra(),
              ),
            )
          ],
        ),
      ),
    );
  }

  barra() {
    return controller.obx(
        (v) => LinearProgressIndicator(
              value: v,
              minHeight: 20,
            ),
        onError: (e) => Center(
              child: Text(
                "ERROR! $e",
                style: TextStyle(color: Colors.red),
              ),
            ));
  }

  barra2() {
    return Obx(() => LinearProgressIndicator(
          value: controller.estado.value,
          minHeight: 20,
        ));
  }
}
