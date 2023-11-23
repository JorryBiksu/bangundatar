import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas Dari Sisi $sisi adalah $hitung";
  }void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil Perhitungan Keliling Dari Sisi $sisi adalah $hitung";
  }
}