import 'package:flutter/material.dart';
import 'package:flutter_paketler/bindings/number_binding.dart';
import 'package:flutter_paketler/core/pages.dart';
import 'package:flutter_paketler/core/themes.dart';
import 'package:flutter_paketler/core/translations.dart';
import 'package:flutter_paketler/service/theme_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      initialBinding: NumberBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      translations: MyTranslations(),
      getPages: Pages.pages,
      themeMode: ThemeService().getThemeMode(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
    );
  }
}
