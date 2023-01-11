import 'package:ddf/utils/ConstantData.dart';
import 'package:ddf/widgets/Custom_topBar.dart';
import 'package:ddf/widgets/Feature_card.dart';
import 'package:ddf/widgets/drop_down_button_widget.dart';
import 'package:ddf/widgets/drop_down_food.dart';
import 'package:ddf/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMeal_2 extends StatelessWidget {
  const AddMeal_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTopbar(textt: 'Add Meal'),
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Add New Meal',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Food Type',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DropDownFood(),
                    SizedBox(
                      height: 10.h,
                    ),
                    textFromField(
                        email: 'Food Name',
                        icon: Icons.fastfood_outlined,
                        inputType: TextInputType.text,
                        password: false),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Add Image',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        FeatureCard(
                          txt: 'Take Picture',
                          icons: Icon(
                            Icons.camera_alt_outlined,
                            color: primaryColor,
                            size: 33.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        FeatureCard(
                          txt: 'Select Photo',
                          icons: Icon(
                            Icons.photo_camera_back_outlined,
                            color: primaryColor,
                            size: 33.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.sp,),
                     Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: EdgeInsets.only(right: 25.w),
                      child: TextField(
                        
                          
                          keyboardType: TextInputType.multiline,
                          maxLines: 4,
                          decoration: InputDecoration( 
                             hintText: "Description",
                              hintStyle: TextStyle(fontSize: 14.0.sp,fontWeight: FontWeight.w400, color: Color(0xffBEBEBE)),
                             focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 1.6, color: primaryColor)
                             ),
                             
                          ),
                           
                       ),
                    ),
                    SizedBox(height: 147.h,),
                    Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 50.h,
                    width: 182.w,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add Meal'),
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        backgroundColor: primaryColor,
                      ),
                    ),
                  ),
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
