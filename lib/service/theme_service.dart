import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService{
  
  GetStorage getStorage = GetStorage();
  var key = 'theme';
  
  bool isSavedDarkMode(){
    return getStorage.read(key) ?? false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }
  
  void saveThemeMode(bool value)async{
    await getStorage.write(key, value);
  }
  
  void changeThemeMode(){
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeMode(!isSavedDarkMode());
  }
  
}