import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/tabs/gf_tabbar.dart';
import 'package:getwidget/components/tabs/gf_tabbar_view.dart';
import 'package:getwidget/components/tabs/gf_tabs.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/drop_down_button_widget.dart';
import '../../widgets/text_form_field_widget.dart';
import '../profile_dependent_screen/profile_dependent.dart';

class AddFamilyMember extends StatefulWidget {
  @override
  State<AddFamilyMember> createState() => _AddFamilyMember();
}

class _AddFamilyMember extends State<AddFamilyMember> {
  int? theriGroupVakue = 0;

  final nameController = TextEditingController();
  final UsernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conPasswordController = TextEditingController();
  final genderController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffE7E7E7),
          body: SingleChildScrollView(
            child: Column(
              children: [
               Container(
                 height: 69,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                   ),
                   color: Color(0xffCAC531),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(width: 15,),
                     IconButton(onPressed: (){},
                         icon: Icon(Icons.arrow_back,
                           color: Colors.white,)),
                     Text('Add Family Member',style: TextStyle(
                       color: Colors.white,
                       fontSize: 18,
                       fontWeight: FontWeight.w500,
                     ),),
                     IconButton(onPressed: (){},
                         icon: Icon(Icons.notifications_none,color: Colors.white,),),
                     SizedBox(width: 20,),
                   ],
                 ),
               ),
             SizedBox(height: 25,),
            Container(
              height: 48,
              width: 340,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10.0)],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TabBar(
                  unselectedLabelColor: Color(0xffBEBEBE),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color: Color(0xffCAC531),
                      ),
                  tabs: [
                    Tab(text: 'Independent',),
                    Tab(text: 'Manage by You',)

                  ],
          ),
              ),
            ),
                SizedBox(
                  height: 35,
                ),
                TabBarView(children: [

                ]),

                DropDownButtonWidget(),
                SizedBox(
                  height: 10,
                ),

                /// TextFromField Name
                TextFromField(
                  controller: nameController,
                  icon: Icons.person,
                  password: false,
                  email: 'Name',
                  inputType: TextInputType.emailAddress,
                  onChanged: (String ) {  },

                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                TextFromField(
                  controller: UsernameController,
                  icon: Icons.supervised_user_circle_outlined,
                  password: false,
                  email: 'Username',
                  inputType: TextInputType.emailAddress,
                  onChanged: (String ) {  },
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),

                /// TextFromField Email
                TextFromField(
                  controller: emailController,
                  icon: Icons.email,
                  password: false,
                  email: 'Email',
                  inputType: TextInputType.emailAddress,
                  onChanged: (String ) {  },
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),

                /// TextFromField Password
                TextFromField(
                  controller: passwordController,
                  icon: Icons.vpn_key,
                  password: true,
                  email: 'password',
                  inputType: TextInputType.text,
                  onChanged: (String ) {  },
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),

                /// TextFromField  confirm Password
                TextFromField(
                 controller: conPasswordController,
                  icon: Icons.vpn_key,
                  password: true,
                  email: 'Confirm Password',
                  inputType: TextInputType.text,
                  onChanged: (String ) {  },
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),

                /// TextFromField Gender
                TextFromField(
                  controller: genderController,
                  icon: Icons.person,
                  password: false,
                  email: 'Gender',
                  inputType: TextInputType.emailAddress,
                  onChanged: (String ) {  },
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),

                /// TextFromField age
                TextFromField(
                  controller: ageController,
                  icon: Icons.supervised_user_circle_outlined,
                  password: false,
                  email: 'Age',
                  inputType: TextInputType.number,
                  onChanged: (String ) {  },
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),

                /// TextFromField Address
                TextFromField(
                  controller: addressController,
                  icon: Icons.supervised_user_circle_outlined,
                  password: false,
                  email: 'Address',
                  inputType: TextInputType.emailAddress,
                  onChanged: (String ) {  },
                ),
                // button signup
                InkWell(
                    onTap: () {
                      print(theriGroupVakue.toString());
                      if (theriGroupVakue == 0) {

                        Get.to(ProfileDependent());
                      } else {
                        // Get.to(ProfileDependent());
                      }
                    },
                    child: CustomBotton(title: "Signup"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}