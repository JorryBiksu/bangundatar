import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jonathan/controller/persegi_controller.dart';
import 'package:jonathan/controller/segitiga_controller.dart';
import 'package:jonathan/controller/trapesium_controller.dart';

class TrapesiumPage extends StatelessWidget {
  TrapesiumPage({Key? key}) : super(key: key);
  final TrapesiumController _trapesiumController = Get.put(TrapesiumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trapesium Page", style: TextStyle(color: Color(0xFFFFE000))),
        backgroundColor: Colors.red.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asset/trapesium.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Trapesium"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Trapesium adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang dua di antaranya saling sejajar namun tidak sama panjang. Trapesium termasuk jenis bangun datar segi empat yang mempunyai ciri khusus."
                      ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        onChanged: (String value) {
                          _trapesiumController.a = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi a",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "Masukkan Sisi a",
                          hintStyle: TextStyle(color: Colors.red.shade500),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.red.shade900),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        onChanged: (String value) {
                          _trapesiumController.b = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi b",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "Masukkan Sisi b",
                          hintStyle: TextStyle(color: Colors.red.shade500),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.red.shade900),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        onChanged: (String value) {
                          _trapesiumController.tinggi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Tinggi atau Sisi c dan d",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "Masukkan Tinggi atau Sisi c dan d",
                          hintStyle: TextStyle(color: Colors.red.shade500),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.red.shade900),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 0
                            ),

                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                                ),
                                onPressed: () {
                                  _trapesiumController.hitungLuas();
                                },
                                child: Text("Hitung Luas")),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.red.shade900),
                              ),
                              onPressed: () {
                                _trapesiumController.hitungKeliling();
                              },
                              child: Text("Hitung Keliling")),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hasil", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Obx(() => Text(_trapesiumController.hasil.value)),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("-------------------------------------"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("㙦㙦"),
                      ],
                    ),
                  ],
                ),
            )


          ],
        ),
      ),
    );
  }
}
