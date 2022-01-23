
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslationService{
  GetStorage getStorage = GetStorage();
  String key = 'trs';

  String getLanguage(){
    return getStorage.read(key) ?? Get.deviceLocale!.languageCode;
  }

  void saveLang(String lang){
    getStorage.write(key, lang);
  }

  void changeLang(String lang){
    Get.updateLocale(Locale(lang));
    saveLang(lang);
  }

}