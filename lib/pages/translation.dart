import 'package:flutter/material.dart';
import 'package:flutter_paketler/service/translation_service.dart';
import 'package:get/get.dart';

class TranslationPage extends StatelessWidget {
  var liste = ['tr', 'en', 'az'];
  var lang;

  @override
  Widget build(BuildContext context) {
    lang = TranslationService().getLanguage();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translation'),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
                items: liste
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                hint: const Text('Seçiniz'),
                value: lang,
                onChanged: (value) {
                  lang = value;
                  TranslationService().changeLang(lang);
                }),
            Text('Merhaba'.tr),
            Text('Araba'.tr),
          ],
        ),
      ),
    );
  }
}
