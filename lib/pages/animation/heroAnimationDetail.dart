import 'package:flutter/material.dart';

class HeroAnimationPage2 extends StatelessWidget {
  const HeroAnimationPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Animation Hero"),
      ),
      body: Center(
        child: Hero(
          tag: "images",
          child: Container(
            width: 500,
            height: 500,
            child: Image.network(
              "https://cdn0-production-images-kly.akamaized.net/FIrmcex4YCLSxwioF_OZ6n4d3kU=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3514655/original/060876200_1626671747-214351767_837721163516632_5068725263459880678_n.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
