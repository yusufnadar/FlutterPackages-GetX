import 'package:get/get.dart';

class NumberController extends GetxController{


  RxList _liste = [1,2,3].obs;

  List get liste => _liste.value;

  set liste(List liste)=> _liste.value = liste;

  listeyeEkle(){
    _liste.add(10);
    //update();
  }



  RxInt _sayi = 5.obs;

  int get sayi => _sayi.value;

  set sayi(int sayi)=> _sayi.value = sayi;

  increment(){
    _sayi.value++;
    update();
  }



}