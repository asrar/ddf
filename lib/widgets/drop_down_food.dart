import 'package:ddf/utils/ConstantData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownFood extends StatefulWidget {
  @override
  _DropDownFoodState createState() => _DropDownFoodState();
}

class _DropDownFoodState extends State<DropDownFood> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 20.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 50.h,
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(Icons.fastfood_outlined, size: 25.sp, color: primaryColor,),
            SizedBox(width:10.w),
            SizedBox(
              width: 290.w,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: primaryColor,
                    size: 30,
                  ),
                  isExpanded: true,
                  value: _chosenValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.black),

                  items: <String>[
                    'Vegitables',
                    'Fruits',
                    'Grains, Beans & Nuts',
                    'Meat & Poultry',
                    'Sea Food',
                    'Dairy Food',
                   
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      ),
                    );
                  }).toList(),

                  hint: Text(
                    "Select relation",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _chosenValue = value!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
