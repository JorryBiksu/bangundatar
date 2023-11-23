import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jonathan/controller/lingkaran_controller.dart';
import 'package:jonathan/controller/persegi_controller.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lingkaran Page", style: TextStyle(color: Color(0xFFFFE000))),
        backgroundColor: Colors.red.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asset/lingkaran.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lingkaran"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Lingkaran adalah bentuk yang terdiri dari semua titik dalam bidang yang berjarak tertentu dari titik tertentu, pusat; "
                      "ekuivalennya adalah kurva yang dilacak oleh titik yang bergerak dalam bidang sehingga jaraknya dari titik tertentu adalah konstan. "
                      "Jarak antara titik mana pun dari lingkaran dan pusat disebut jari-jari. "
                      "Artikel ini adalah tentang lingkaran dalam geometri Euklides, dan, khususnya, bidang Euklides, kecuali jika dinyatakan sebaliknya."
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
                          _lingkaranController.r = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Jari-Jari",
                          labelStyle: TextStyle(color: Colors.red.shade900),
                          hintText: "Masukkan Jari-Jari",
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
                                  _lingkaranController.hitungLuas();
                                },
                                child: Text("Hitung Luas")),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.red.shade900),
                              ),
                              onPressed: () {
                                _lingkaranController.hitungKeliling();
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

                        Obx(() => Text(_lingkaranController.hasil.value)),

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
