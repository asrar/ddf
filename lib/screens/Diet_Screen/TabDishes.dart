import 'package:ddf/Screens/selectMeal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../model/DishModel.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/DataFile.dart';
import 'DishDetailPage.dart';

class TabDishes extends StatefulWidget {
  final ValueChanged<int> valueChanged;

  TabDishes(this.valueChanged);

  @override
  _TabDishes createState() {
    return _TabDishes();
  }
}

class _TabDishes extends State<TabDishes> {
  List<DishModel> dishList = DataFile.getDishList();

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double margin = getScreenPercentSize(context, 1.5);

    return WillPopScope(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // icon: getPrimaryAppBarIcon(),
                InkWell(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 25.sp,
                    )),
                Spacer(),
                Text('Dishes'),
                Spacer(),
                Icon(
                  Icons.notifications_none_rounded,
                  size: 25.sp,
                  color: Colors.white,
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            backgroundColor: primaryColor,
            automaticallyImplyLeading: false
            // centerTitle: true,
            // leading: null,
            // leading: Builder(
            //   builder: (BuildContext context) {
            //     return IconButton(
            //       icon: getPrimaryAppBarIcon(),
            //       onPressed: () {
            //         onBackPress();
            //       },
            //     );
            //   },
            // ),
            ),
        body: SafeArea(
          child: Container(
            child: Container(
              child: ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, pos) {
                  double width = getWidthPercentSize(context, 34);
                  double height = getScreenPercentSize(context, 30);
                  double cellHeight = getPercentSize(height, 79);
                  double remainSize = height - cellHeight;
                  dishList = dishList.reversed.toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(margin),
                        child: getBoldTextWidget(
                            "Day " + (pos + 1).toString(),
                            textColor,
                            TextAlign.start,
                            FontWeight.bold,
                            getScreenPercentSize(context, 3)),
                      ),
                      Container(
                        height: 275.h,
                        margin: EdgeInsets.symmetric(vertical: margin),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dishList.length + 1,
                          itemBuilder: (context, index) {
                            // DishModel model = dishList[index];
                            if (index < dishList.length) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DishDetailPage(
                                            dishList[index].image!,
                                            "Day " + (pos + 1).toString()),
                                      ));
                                  // DetailPage(model, "Day " + (pos + 1).toString()),));
                                },
                                child: Container(
                                  width: width,
                                  child: Card(
                                    elevation: 5,
                                    margin: EdgeInsets.only(
                                        left: margin,
                                        bottom: margin,
                                        right: (index == dishList.length - 1)
                                            ? margin
                                            : 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: cellHeight,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                  getPercentSize(width, 6),
                                                ),
                                                topRight: Radius.circular(
                                                  getPercentSize(width, 6),
                                                ),
                                              ),
                                              color: cellColor,
                                              image: DecorationImage(
                                                image: new ExactAssetImage(
                                                  ConstantData.assetsPath +
                                                      // "homemade_receipe.jpg",
                                                      dishList[index].image!,
                                                ),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        SizedBox(
                                          height:
                                              getPercentSize(remainSize, 40),
                                        ),
                                        getCustomTextWidget(
                                            dishList[index].title!,
                                            textColor,
                                            2,
                                            TextAlign.start,
                                            FontWeight.w800,
                                            getPercentSize(remainSize, 27))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return InkWell(
                                onTap: () => Get.to(SelectMeal()),
                                child: Center(
                                  child: Container(
                                    height: 70.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: primaryColor),
                                        child: Icon(Icons.add, size: 40.sp, color: Colors.white,),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
      onWillPop: () async {
        onBackPress();
        return true;
      },
    );
  }

  void onBackPress() {
    widget.valueChanged(0);
  }
}
