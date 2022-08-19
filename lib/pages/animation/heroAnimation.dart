import 'package:flutter/material.dart';

import 'heroAnimationDetail.dart';

class HeroAnimationPage extends StatefulWidget {
  const HeroAnimationPage({Key? key}) : super(key: key);

  @override
  State<HeroAnimationPage> createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipOval(
            child: GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroAnimationPage2(),
                  ),
                )
              },
              child: Hero(
                tag: "images",
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    "https://cdn0-production-images-kly.akamaized.net/FIrmcex4YCLSxwioF_OZ6n4d3kU=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3514655/original/060876200_1626671747-214351767_837721163516632_5068725263459880678_n.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
