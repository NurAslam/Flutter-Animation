import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool toogle = false; //jika ingin diubah harus di taruh di luar context
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animated Container"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              toogle = !toogle;
            });
          },
          child: AnimatedContainer(
            duration: Duration(microseconds: 100),
            curve: Curves.elasticInOut,
            height: toogle ? 100 : 200,
            width: toogle ? 100 : 200,
            color: (toogle) ? Colors.black : Colors.blue,
            
          ),
        ),
      ),
    );
  }
}
