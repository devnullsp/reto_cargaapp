import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rutas.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    initialRoute: "/",
  ));
}
