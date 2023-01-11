import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/ConstantData.dart';

class FeatureCard extends StatelessWidget {
  String txt;
  Icon icons;
  FeatureCard({required this.txt, required this.icons});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      child: Container(
        height: 100.h,
        width: 160.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icons,
            SizedBox(height: 11.h,),
            Text(
              txt,
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}