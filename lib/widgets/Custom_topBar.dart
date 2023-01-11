import 'package:ddf/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
class CustomTopbar extends StatelessWidget {
 String textt;
 CustomTopbar({required this.textt});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: double.infinity.w,
                  padding: EdgeInsets.symmetric(
                      horizontal: getScreenPercentSize(context, 2)),
                  height: 69.h,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                        // bottomRight: Radius.circular(radius1)
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getWidthPercentSize(context, 4),
                      ),
                      Expanded(
                        child: CustomRow(txt: textt),
                      ),
                    ],
                  ),
                );
  }
}