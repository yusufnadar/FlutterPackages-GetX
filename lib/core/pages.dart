import 'package:flutter_paketler/pages/home_page.dart';
import 'package:flutter_paketler/pages/navigation.dart';
import 'package:flutter_paketler/pages/sm.dart';
import 'package:flutter_paketler/pages/snack_bar.dart';
import 'package:flutter_paketler/pages/theme.dart';
import 'package:flutter_paketler/pages/translation.dart';
import 'package:flutter_paketler/pages/utils.dart';
import 'package:get/get.dart';

class Pages{
  static var pages = [
    GetPage(name: '/', page: ()=>const HomePage()),
    GetPage(name: '/navigation', page: ()=>const NavigationPage()),
    GetPage(name: '/snackBar', page: ()=>const SnackBarPage()),
    GetPage(name: '/translation', page: ()=>TranslationPage()),
    GetPage(name: '/theme', page: ()=>const ThemePage()),
    GetPage(name: '/utils', page: ()=>const UtilsPage()),
    GetPage(name: '/sm', page: ()=>const SMPage()),
  ];
}