import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Boarding extends StatefulWidget {
  @override
  _BoardingState createState() => _BoardingState();
}

PageController pageController = PageController();

class _BoardingState extends State<Boarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Get.height,
          width: Get.width,
          child: PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              thirdPage(),
            ],
          )),
    );
  }
}

Widget thirdPage() {
  return Container(
    color: Colors.blue,
  );
}
