import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    double hitung = alas * tinggi * 0.5;
    hasil.value = "Hasil Perhitungan Luas Dari Alas $alas dan Tinggi $tinggi adalah $hitung";
  }void hitungKeliling(){
    int hitung = alas * 3;
    hasil.value = "Hasil Perhitungan Keliling Dari Sisi $alas adalah $hitung";
  }
}