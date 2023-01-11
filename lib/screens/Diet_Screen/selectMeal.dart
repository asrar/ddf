import 'dart:math';
import 'dart:ui';

import 'package:ddf/Screens/AddMeal_2.dart';
import 'package:ddf/utils/ConstantData.dart';
import 'package:ddf/widgets/Custom_topBar.dart';
import 'package:ddf/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectMeal extends StatefulWidget {
  @override
  State<SelectMeal> createState() => _SelectMealState();
}

class _SelectMealState extends State<SelectMeal> {
  List<String> images = [
    'assets/images/image 1.png',
    'assets/images/image 2.png',
    'assets/images/image 3.png',
    'assets/images/image 4.png',
    'assets/images/image 5.png',
    'assets/images/image 6.png',
    'assets/images/image 7.png',
    'assets/images/image 1.png',
    'assets/images/image 2.png',
    'assets/images/image 3.png',
    'assets/images/image 4.png',
  ];

  var selected = 0;
  var sel=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTopbar(textt: 'Select Meal'),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Food Type',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 82.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            bool isSelect = (index == sel);

                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      sel = index;
                                    },
                                  );
                                },
                                child: Container(
                                  width: 90.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        isSelect ? primaryColor : Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.fastfood_outlined,
                                        color: isSelect
                                            ? Colors.white
                                            : Color(0xffBEBEBE),
                                      ),
                                      Text(
                                        'Fruits',
                                        style: TextStyle(
                                            color: isSelect
                                                ? Colors.white
                                                : Color(0xffBEBEBE),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: 4),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Selected Food ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: GridView.builder(
                          itemCount: images.length + 1,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 12,
                                  childAspectRatio: 0.5,
                                  mainAxisSpacing: 30),
                          itemBuilder: (context, index) {
                            bool isSelected = (index == selected);
                            if (index < images.length) {
                              return Column(
                                children: [
                                  Container(
                                    height: 86.h,
                                    width: 86.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            images[index],
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          selected = index;
                                        },
                                      );
                                    },
                                    child: Text(
                                      'Apple',
                                      style: TextStyle(
                                          color: isSelected
                                              ? Colors.white
                                              : Color(0xffBEBEBE)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: isSelected
                                            ? primaryColor
                                            : Color(0xffF2F2F2)),
                                  ),
                                ],
                              );
                            } else {
                              return InkWell(
                                onTap: () => Get.to(AddMeal_2()),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: primaryColor),
                                      child: Icon(
                                        Icons.add,
                                        size: 40.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Add'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: primaryColor),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 50.h,
                  width: 182.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Select'),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
