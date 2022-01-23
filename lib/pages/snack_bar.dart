import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar && Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar('Başlık', 'Alt Başlık',
                    icon: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                    isDismissible: true,
                    duration: const Duration(seconds: 2), onTap: (value) {
                  print(value);
                }, dismissDirection: DismissDirection.horizontal);
              },
              child: const Text('Snack Bar 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.showSnackbar(
                  const GetSnackBar(
                    message: 'Alt Başlık',
                    backgroundColor: Colors.red,
                    snackPosition: SnackPosition.BOTTOM,
                    titleText: Text(
                      'Başlık2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
              child: const Text('Snack Bar 2'),
            ),
            ElevatedButton(
              onPressed: () {
                /*
                Get.dialog(AlertDialog(
                  content: const Text('Alt Başlık'),
                  title: const Text('Başlık'),
                  actions: [
                    ElevatedButton(onPressed: (){
                      Get.back();
                    }, child: const Text('Geri Çık'))
                  ],
                ));
                Get.dialog(const Dialog(child: Text('2.Dialog'),));
                 */
                Get.defaultDialog(
                  title: 'Başlık',
                  middleText: 'Açıklama',
                  textCancel: 'İptal Et',
                  textConfirm: 'Kabul Et',
                  cancel: Text('İptal Et2')
                );
              },
              child: const Text('Get Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
