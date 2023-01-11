import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../add_family_screen/add_family_member.dart';
import '../add_family_screen/independent_form.dart';
import '../profile_dependent_screen/profile_dependent.dart';
class FamilyMemberList extends StatefulWidget {
  // const FamilyMemberList({Key? key}) : super(key: key);

  @override
  State<FamilyMemberList> createState() => _FamilyMemberListState();
}
class _FamilyMemberListState extends State<FamilyMemberList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xff0e756a),
        title: Text('Family Members'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Get.to(AddFamilyMember());
                },
                child: Icon(Icons.add)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25, top: 20, bottom: 10),
            child: InkWell(
              onTap: () {

                Get.to(ProfileDependent());

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Asrar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('(You)'),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff0e756a)),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding:
                EdgeInsets.only(left: 25.0, right: 25, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Syeda Nighat Batool',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 1),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('(Mother)'),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff0e756a)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:
                EdgeInsets.only(left: 25.0, right: 25, top: 10, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IndependentForm()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Tenzila ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                  Column(
                    children: [Text('(Sister)')],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding:
                EdgeInsets.only(left: 25.0, right: 25, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Absar ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 1),
                    )
                  ],
                ),
                Column(
                  children: [Text('(Brother)')],
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}