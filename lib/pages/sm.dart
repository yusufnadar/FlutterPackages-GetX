import 'package:flutter/material.dart';
import 'package:flutter_paketler/controller/number_controller.dart';
import 'package:get/get.dart';

class SMPage extends GetWidget<NumberController> {
  const SMPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<NumberController>().sayi.toString()),
            Obx(
              () => Text(
                controller.sayi.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            ),
            GetX<NumberController>(
              init: NumberController(),
              initState: (func) {
                print('initState çalıştı');
              },
              dispose: (func) {
                print('dispose çalıştı');
              },
              builder: (_) => Text(
                _.sayi.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            ),
            GetX<NumberController>(
              init: NumberController(),
              builder: (_) => Column(
                children: [
                  Text(
                    _.liste.length.toString(),
                    style: const TextStyle(fontSize: 40),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _.listeyeEkle();
                      },
                      child: const Text('Artır'))
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
