import 'package:flutter_paketler/controller/number_controller.dart';
import 'package:get/get.dart';

class NumberBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<NumberController>(NumberController());
    Get.lazyPut<NumberController>(() => NumberController(),fenix: true);

  }

}