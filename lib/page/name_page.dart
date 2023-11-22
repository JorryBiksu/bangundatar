import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            "Home Page",
            style: TextStyle(color: Color(0xFFC6FF00))),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(title: "Persegi", ImageAsset: "asset/persegi.png",)),
              Expanded(child: CustomMenu(title: "Lingkaran", ImageAsset: "asset/lingkaran.png",)),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(title: "Segitiga", ImageAsset: "asset/segitiga.jpg",)),
              Expanded(child: CustomMenu(title: "Trapesium", ImageAsset: "asset/trapesium.png",)),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.ImageAsset, required this.title,
  });
final String ImageAsset;
final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16, vertical: 100,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 16, vertical: 8
        ),
          decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(10))
    ,child: Column(
      children: [
        Image.asset(ImageAsset, height: 100,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
      ],
    ));
  }
}


