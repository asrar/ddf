import 'package:ddf/Screens/AddMeal_3.dart';
import 'package:ddf/widgets/Custom_topBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:image/image.dart' as img;
import 'package:palette_generator/palette_generator.dart';

import '../model/FoodModel.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../widgets/custom_row.dart';

class YourDietDetailPage extends StatefulWidget {
  final FoodModel foodModel;

  YourDietDetailPage(this.foodModel);

  @override
  _YourDietDetailPage createState() {
    return _YourDietDetailPage();
  }
}

class _YourDietDetailPage extends State<YourDietDetailPage> {
  FoodModel foodModel = new FoodModel();

  void onBackClick() {
    Get.back();
  }

  List<String> ingredientsList = [
    "1 red apple",
    "1 beet",
    "1 stick celery",
    "green tea(optional)",
    "1 raspberries",
    "1 tsp ginger(optional)"
  ];

  @override
  void initState() {
    super.initState();

    setState(() {
      foodModel = widget.foodModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    double margin = getScreenPercentSize(context, 2);
    double horizontalMargin = getScreenPercentSize(context, 3.5);
    double height = getScreenPercentSize(context, 30);
    double viewHeight = getScreenPercentSize(context, 12);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: backgroundColor,
          // appBar: AppBar(
          //   toolbarHeight: 69.h,
          //   title:
          //       Center(child: getPrimaryAppBarText(context, foodModel.title!)),
          //   backgroundColor: primaryColor,
          //   centerTitle: false,
          //   elevation: 0,
          //   leading: Builder(
          //     builder: (BuildContext context) {
          //       return IconButton(
          //         icon: getPrimaryAppBarIcon(),
          //         onPressed: onBackClick,
          //       );
          //     },
          //   ),
          //    shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20)
          // ),
          // ),
          body: SafeArea(
            child: Container(
              color: cellColor,
              child: ListView(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 393.h,
                        decoration: BoxDecoration(
                            color: cellColor,
                            image: DecorationImage(
                              image: new ExactAssetImage(
                                // ConstantData.assetsPath + "homemade_receipe.jpg",
                                ConstantData.assetsPath + foodModel.image!,
                              ),
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      CustomTopbar(textt: 'BreakFast'),
                      Padding(
                        padding: EdgeInsets.only(top: 118.h),
                        child: Container(
                          margin:
                              EdgeInsets.only(top: getPercentSize(height, 88)),
                          decoration: BoxDecoration(
                            color: cellColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getScreenPercentSize(context, 4),
                              ),
                              topRight: Radius.circular(
                                getScreenPercentSize(context, 4),
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: viewHeight / 2,
                              ),
                              Container(
                                margin: EdgeInsets.all(margin),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        getTitle(foodModel.title!),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.w),
                                          child: InkWell(
                                              onTap: () => Get.to(AddMeal3()),
                                              child: Icon(
                                                Icons.add,
                                                size: 25.sp,
                                              )),
                                        )
                                      ],
                                    ),
                                    getList(ingredientsList),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: margin,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 97.h),
                        child: Container(
                          height: viewHeight,
                          margin: EdgeInsets.only(
                              top: getPercentSize(height, 70),
                              right: horizontalMargin,
                              left: horizontalMargin),
                          child: Card(
                            color: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    getPercentSize(viewHeight, 8)))),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getPercentSize(viewHeight, 5),
                                  vertical: getPercentSize(viewHeight, 3)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  getCell(viewHeight, "Protein", "530"),
                                  Container(
                                    height: getPercentSize(viewHeight, 35),
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  getCell(viewHeight, "Fat", "120"),
                                  Container(
                                    height: getPercentSize(viewHeight, 35),
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  getCell(viewHeight, "Carbs", "250"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          onBackClick();
          return false;
        });
  }

  img.Image? photo;

  getCell(double height, String s, String s1) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: getWidthPercentSize(context, 1),
              ),
              // Expanded(
              //   child:
              getTextWidget(
                s,
                Colors.white,
                TextAlign.start,
                FontWeight.w600,
                getPercentSize(height, 14),
              ),
              // )
            ],
          ),
          // Expanded(
          //   child:
          getTextWidget(
            s1,
            Colors.white,
            TextAlign.center,
            FontWeight.bold,
            getPercentSize(height, 16),
          ),
          // )
        ],
      ),
    );
  }

  getList(List<String> list) {
    double margin = getScreenPercentSize(context, 2);
    double size = getScreenPercentSize(context, 1);
    // double size = getScreenPercentSize(context, 2.8);

    return ListView.builder(
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
                height: size,
                width: size,
                margin: EdgeInsets.only(right: margin),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: primaryColor),
              ),
              Expanded(
                  child: getRobotoTextWidget(
                      list[index],
                      textColor,
                      TextAlign.start,
                      FontWeight.w400,
                      getScreenPercentSize(context, 2))),
            ],
          ),
        );
      },
    );
    // )
  }

  getTitle(String s) {
    double margin = getScreenPercentSize(context, 1.5);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: margin),
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: getScreenPercentSize(context, 0.5)),
        child: Text(
          s,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: getScreenPercentSize(context, 2.5),
              color: textColor,
              fontFamily: ConstantData.fontFamily,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  void setImageBytes(imageBytes) {
    print("setImageBytes");
    List<int> values = imageBytes.buffer.asUint8List();
    photo = null;
    photo = img.decodeImage(values);
  }

  // image lib uses uses KML color format, convert #AABBGGRR to regular #AARRGGBB
  int abgrToArgb(int argbColor) {
    print("abgrToArgb");
    int r = (argbColor >> 16) & 0xFF;
    int b = argbColor & 0xFF;
    return (argbColor & 0xFF00FF00) | (b << 16) | r;
  }

  // FUNCTION

  PaletteGenerator? paletteGenerator;
}
