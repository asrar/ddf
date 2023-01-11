import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/screen_sizes.dart';
class DashboardWidgets extends StatelessWidget {
  String image;
  String? image1;
  String? image2;
  String title;
  Color color;
  Color color1;

   DashboardWidgets({Key? key,
  required this.title,
    required this.image,
    this.image1,
    this.image2,
     required this.color1,
     required this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: Get.height* ScreenSizes.SCREEN_SIZE_14,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            color1,
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            top:40,
            bottom: 40,
            left: 15,
            child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),),
          Positioned(
              top:30,
              bottom: 40,
              left: 140,
              child: Image.asset(image1!)),
          Positioned(
              bottom: 0,
              top: 7,
              right: 5,
              child: Image.asset(image,)),
          Positioned(
              bottom:20,
              right: -10,

              child: Image.asset(image2!)),
        ],
      ),
    );
  }
}
