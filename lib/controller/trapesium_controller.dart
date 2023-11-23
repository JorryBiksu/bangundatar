import 'package:get/get.dart';

class TrapesiumController extends GetxController{
  int a = 0;
  int b = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    double hitung = (a+b) * tinggi / 2;
    hasil.value = "Hasil Perhitungan Luas Dari Sisi a $a, Sisi b $b, dan Tinggi $tinggi adalah $hitung";
  }void hitungKeliling(){
    int hitung = a+b+tinggi+tinggi;
    hasil.value = "Hasil Perhitungan Keliling Dari  Sisi a $a, Sisi b $b,  Sisi c $tinggi, Sisi d $tinggi, adalah $hitung";
  }
}