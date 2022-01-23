import 'package:flutter/material.dart';
import 'package:flutter_paketler/service/theme_service.dart';
import 'package:get/get.dart';

class ThemePageController extends GetxController {
  final _isDark = ThemeService().isSavedDarkMode().obs;

  bool get isDark => _isDark.value;

  set isDark(bool value) => _isDark.value = value;
}

class ThemePage extends StatelessWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ThemePageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: Obx(
          () => Switch(
            value: controller.isDark,
            onChanged: (value) {
              ThemeService().changeThemeMode();
              controller.isDark = value;
            },
          ),
        ),
      ),
    );
  }
}
