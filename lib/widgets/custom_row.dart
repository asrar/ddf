import 'package:ddf/Screens/NotificationPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomRow extends StatelessWidget {
  String txt;
  CustomRow({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25.sp,
          ),
        ),
        Spacer(),
        Text(
          txt,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: Colors.white),
        ),
        Spacer(),
        InkWell(
          onTap: () => Get.to(NotificationPage()),
          child: Icon(
            Icons.notifications_none_rounded,
            size: 25.sp,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
