import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:ddf/Screens/TabDishes.dart';
import 'package:ddf/Screens/YourDietDetailPage.dart';
import 'package:ddf/widgets/custom_row.dart';

import 'package:flutter/material.dart';

import 'package:ddf/model/CategoryModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:visibility_detector/visibility_detector.dart';

import '../model/FoodModel.dart';

import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/DataFile.dart';
import '../utils/SizeConfig.dart';

class TabDiet extends StatefulWidget {
  final ValueChanged<int> valueChanged;

  TabDiet(this.valueChanged);

  @override
  _TabDiet createState() {
    return _TabDiet();
  }
}

class _TabDiet extends State<TabDiet> {
  int categoryPosition = 0;
  DateTime dateTime = DateTime.now();

  List<String> list = ["Breakfast", "Snack", "Lunch", "Dinner"];
  final controller = CarouselController();

  List<FoodModel> sliderList = DataFile.getFoodList();
  List<CategoryModel> categoryList = DataFile.getCategoryList();
  // AutoScrollController? _controller;

  @override
  void initState() {
    super.initState();
    // _controller = AutoScrollController(
    //     viewportBoundaryGetter: () =>
    //         Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
    //     axis: Axis.horizontal);
  }

  List<String> ingredientsList = [
    "1 red apple",
    "1 beet",
    "1 stick celery",
  ];

  List<String> ingredientsList1 = [
    "1 raspberries",
    "1 tsp ginger(optional)",
    "1 tbps vanilla extract",
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height = getScreenPercentSize(context, 5);
    double appBarHeight = getScreenPercentSize(context, 13);
    double listHeight = getScreenPercentSize(context, 42);
    double radius1 = getPercentSize(appBarHeight, 25);
    double radius = getPercentSize(listHeight, 2);

    return WillPopScope(
      onWillPop: () async {
        widget.valueChanged(0);
        return true;
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        // appBar: AppBar(
        //   title: getPrimaryAppBarText(context, S.of(context).appname),
        //   backgroundColor: primaryColor,
        //   centerTitle: true,
        //   leading: null,
        // ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity.w,
                  padding: EdgeInsets.symmetric(
                      horizontal: getScreenPercentSize(context, 2)),
                  height: 69.h,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(radius1 * 1),
                        bottomRight: Radius.circular(radius1 * 1),
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
                        child: CustomRow(txt: 'Diet Plan'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      // CarouselSlider(
                      //   carouselController: controller,
                      //   options: CarouselOptions(
                      //       height: sliderHeight,
                      //       viewportFraction: 0.7,
                      //       autoPlay: true,
                      //       autoPlayInterval: Duration(seconds: 3),
                      //       aspectRatio: 1.0,
                      //       enlargeCenterPage: true,
                      //       onPageChanged: (index, reason) {
                      //         setState(() {
                      //           _current = index;
                      //         });
                      //       },
                      //       enlargeStrategy: CenterPageEnlargeStrategy.height),
                      //   items: imageSliders,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: sliderList.map((url) {
                      //     int index = sliderList.indexOf(url);
                      //     return Container(
                      //       width: 8.0,
                      //       height: 8.0,
                      //       margin:
                      //           EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
                      //       decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color:
                      //             _current == index ? primaryColor : disableIconColor,
                      //       ),
                      //     );
                      //   }).toList(),
                      // ),
                      //
                      //
                      //
                      Padding(
                        padding: EdgeInsets.only(
                            top: 30.h, left: 28.w, bottom: 15.h),
                        child: Text(
                          'Your Meal Plan',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              size: getScreenPercentSize(context, 3),
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: getTextWidget(
                                "Dec 24 - 30 Dec",
                                Colors.black,
                                TextAlign.start,
                                FontWeight.bold,
                                getScreenPercentSize(context, 2),
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: getScreenPercentSize(context, 3),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 28.w, bottom: 40.h),
                        child: DatePicker(
                          DateTime.now(),
                          initialSelectedDate: DateTime.now(),
                          selectionColor: primaryColor,
                          selectedTextColor: Colors.white,
                          // dayTextStyle: TextStyle(color: textColor),
                          dayTextStyle: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: getScreenPercentSize(context, 1.5)),

                          monthTextStyle: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: getScreenPercentSize(context, 1.5)),
                          dateTextStyle: TextStyle(
                              color: textColor, fontWeight: FontWeight.w800),
                          onDateChange: (date) {
                            setState(() {
                              dateTime = date;
                            });
                          },
                        ),
                      ),

                      Container(
                        height: height,
                        margin: EdgeInsets.symmetric(
                            vertical: getScreenPercentSize(context, 2)),
                        child: ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            bool isSelected = categoryPosition == index;
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 0.5),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    // color: (isSelected)?primaryColor:Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 25.h,
                                        width: 78.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: (isSelected)
                                                ? primaryColor
                                                : Color(0xffFFFFFF)),
                                        child: Center(
                                          child: getTextWidget(
                                            list[index],
                                            (isSelected)
                                                ? Colors.white
                                                : textColor,
                                            TextAlign.start,
                                            (isSelected)
                                                ? FontWeight.w500
                                                : FontWeight.w400,
                                            getPercentSize(height, 40),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () async {
                                // await _controller!.scrollToIndex(categoryPosition,
                                //     preferPosition: AutoScrollPosition.begin);

                                setState(() {
                                  categoryPosition = index;
                                });
                              },
                            );
                          },
                        ),
                      ),

                      Container(
                        height: listHeight,
                        margin: EdgeInsets.only(
                            bottom: getScreenPercentSize(context, 2)),
                        child: ListView.builder(
                          // controller: _controller,

                          itemCount: sliderList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            double imgHeight = getPercentSize(listHeight, 60);
                            // double imgHeight = getPercentSize(listHeight, 50);
                            double remainHeight = listHeight - imgHeight;
                            return InkWell(
                              child: VisibilityDetector(
                                key: Key(index.toString()),
                                onVisibilityChanged: (VisibilityInfo info) {
                                  if (info.visibleFraction == 1)
                                    setState(() {
                                      categoryPosition = index;
                                    });
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(radius)),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 30.h),
                                  color: cellColor,
                                  child: Container(
                                    width: getWidthPercentSize(context, 75),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(radius),
                                              topLeft: Radius.circular(radius)),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                ConstantData.assetsPath +
                                                    sliderList[index].image!,
                                                height: imgHeight,
                                                width: double.infinity,
                                                fit: BoxFit.fill,
                                              ),
                                              Container(
                                                height: imgHeight,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                  colors: [
                                                    Colors.black45,
                                                    Colors.black54,
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                )),
                                              ),
                                              Positioned.fill(
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getPercentSize(
                                                                remainHeight,
                                                                5),
                                                        vertical:
                                                            getPercentSize(
                                                                remainHeight,
                                                                6)),
                                                    child: getTextWidget(
                                                      sliderList[index].title!,
                                                      Colors.white,
                                                      TextAlign.start,
                                                      FontWeight.w800,
                                                      getPercentSize(
                                                          remainHeight, 15),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 182.h, left: 260.w),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  size: 20.sp,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // SizedBox(
                                              //   height: getPercentSize(
                                              //       remainHeight, 3),
                                              // ),

                                              // Padding(
                                              //   padding: EdgeInsets.symmetric(
                                              //       horizontal: getPercentSize(
                                              //           remainHeight, 5)),
                                              //   child: getList(
                                              //       (index % 2 == 0)
                                              //           ? ingredientsList
                                              //           : ingredientsList1,
                                              //       remainHeight),
                                              // ),
                                              // getCustomText(
                                              //     sliderList[index].desc!,
                                              //     subTextColor,2,
                                              //     TextAlign.start,
                                              //     FontWeight.w600,
                                              //     getPercentSize(remainHeight, 8)),
                                              //
                                              //

                                              // SizedBox(
                                              //   height: getPercentSize(
                                              //       remainHeight, 5),
                                              // )
                                              // //
                                              // //
                                              // ,
                                              Expanded(
                                                child: Container(
                                                  height: double.infinity,
                                                  color: primaryColor
                                                      .withOpacity(0.1),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          getPercentSize(
                                                              remainHeight, 5),
                                                      vertical: getPercentSize(
                                                          remainHeight, 3)),
                                                  child: Row(
                                                    children: [
                                                      getCell(remainHeight,
                                                          "Protein", "530"),
                                                      Spacer(),
                                                      VerticalDivider(
                                                        color: Colors.grey,
                                                        thickness: 1.sp,
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(),
                                                        flex: 1,
                                                      ),
                                                      getCell(remainHeight,
                                                          "Fat", "120"),
                                                      Spacer(),
                                                      VerticalDivider(
                                                        color: Colors.grey,
                                                        thickness: 1.sp,
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(),
                                                        flex: 1,
                                                      ),
                                                      getCell(remainHeight,
                                                          "Carbs", "250"),
                                                      Expanded(
                                                        child: SizedBox(),
                                                        flex: 1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),

                                              // SizedBox(height: getPercentSize(remainHeight, 5),),
                                            ],
                                          ),
                                          flex: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                // setState(() {
                                //   categoryPosition = index;
                                // });
                                //
                                Get.to(() =>
                                    YourDietDetailPage(sliderList[index]));
                              },
                            );
                          },
                        ),
                      ),

                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () => Get.to(TabDishes((value) => 1,)),
                          child: Container(
                            height: 50.h,
                            width: 182.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryColor),
                            child: Center(
                              child: Text(
                                'Track Diet',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
                //  Container(
                //         height: 50.h,
                //         width: 182.w,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             color: primaryColor),
                //         child: Center(
                //           child: Text(
                //             'Track Diet',
                //             style: TextStyle(
                //                 fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.white),
                //           ),
                //         ),
                //       ),
                //       SizedBox(height: 30.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  getList(List<String> list, double height) {
    double margin = getPercentSize(height, 2);
    double size = getPercentSize(height, 3);

    return Stack(
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(top: (margin / 2)),
          // padding: EdgeInsets.symmetric(vertical: (margin / 2)),
          itemCount: list.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: margin / 2),
              child: Row(
                children: [
                  Container(
                    height: size, width: size,
                    margin: EdgeInsets.only(right: margin),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    // child: Center(
                    //   child: getRobotoTextWidget((index+1).toString(),
                    //       Colors.white, TextAlign.center,FontWeight.w600, getPercentSize(size,50)),
                    //
                    // ),
                  ),
                  Expanded(
                      child: getRobotoTextWidget(
                          list[index],
                          textColor,
                          TextAlign.start,
                          FontWeight.w600,
                          getPercentSize(height, 8.5))
                      // getPercentSize(height, 7.5))
                      // child: new RichText(
                      //   text: new TextSpan(
                      //     children: <TextSpan>[
                      //       // new TextSpan(
                      //       //     text: '-  ',
                      //       //     style: new TextStyle(
                      //       //         fontWeight: FontWeight.w400,
                      //       //         color: Colors.red,
                      //       //         fontFamily: "Montserrat",
                      //       //         fontSize:
                      //       //         getScreenPercentSize(context, 2))),
                      //       new TextSpan(
                      //           text: list[index],
                      //           style: new TextStyle(
                      //               fontWeight: FontWeight.w500,
                      //               fontFamily: "Montserrat",
                      //               color: textColor,
                      //               fontSize: getScreenPercentSize(
                      //                   context, 1.6))),
                      //     ],
                      //   ),
                      // ),
                      ),
                ],
              ),
            );
          },
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,

            child: Image.asset(
              ConstantData.assetsPath + "right-arrow.png",
              height: getScreenPercentSize(context, 2),
              color: textColor,
            ),
            // child: Container(
            //   height: circle,
            //   width: circle,
            //   // decoration: BoxDecoration(
            //   //   shape: BoxShape.circle,
            //   //   color: primaryColor,
            //   // ),
            //   // child: Center(
            //     // child: Icon(Icons.more_vert,color: primaryColor
            //     //   ,size: getPercentSize(circle, 90),),
            //     // child: Icon(Icons.navigate_next,color: Colors.white,size: getPercentSize(circle, 70),),
            //   // ),
            // ),
          ),
        )
      ],
    );
    // )
  }

  getCell(double height, String s, String s1) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        SizedBox(
          width: getWidthPercentSize(context, 1),
        ),
        // Expanded(
        //   child:
        getTextWidget(
          s,
          subTextColor,
          TextAlign.start,
          FontWeight.w600,
          getPercentSize(height, 8),
        ),
        // Expanded(
        //   child:
        getTextWidget(
          s1,
          textColor,
          TextAlign.center,
          FontWeight.bold,
          getPercentSize(height, 10),
        ),
        // )
      ],
    );
  }
}
