import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Get.height*0.40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff359CB6),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20,top: 30,right: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back,color: Colors.white,size: 20,),
                            Text('Doctors Appointment',style: TextStyle(
                              color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500
                            ),),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.add,color: Color(0xff359CB6),size: 20,),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,),
                                  child: Center(child: SvgPicture.asset('assets/appointment/group.svg',
                                    fit: BoxFit.cover,height: 90,width: 90,)),

                                ),
                                SizedBox(height: 10,),
                                Text(' Dr. Saifullah',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18
                                ),),
                                Text('is simply dummy text of the\n printing and typesetting industry\n. Lorem Ipsu has been.',style: TextStyle(
                                 color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10

                                ),)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,),
                                  child: Center(child: SvgPicture.asset('assets/appointment/Group 56.svg',
                                    fit: BoxFit.cover,height: 100,width: 100,)),

                                ),
                                SizedBox(height: 10,),
                                Text(' Patient',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                ),),
                                Text('is simply dummy text of the\n printing and typesetting industry.\n Lorem Ipsu has been.',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10

                                ),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),  Container(
                  height: Get.height*0.055,
                 width: 340,
                   decoration: BoxDecoration(
                   boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4.0)],
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   ),

                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                     child: TabBar(
                       unselectedLabelColor: Color(0xffBEBEBE),
                       indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                           color: Color(0xff359CB6),
                           image: DecorationImage(
                               image: AssetImage('assets/images/placeholder.png'),
                               fit: BoxFit.fitWidth)),
                       tabs: [
                         Tab(text: 'Text',),
                        Tab(text: 'Video',)

                       ],
                     ),
                   ),
                 ),

                SizedBox(
                  height: 370,
                  width: double.infinity,
                  child: TabBarView(
                      children: [
                    Expanded(
                      child: Column(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Container(height:48 ,width: 286,
                                decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(color: Colors.white, blurRadius: 4.0)],
                                ),
                                child: TextField(
                                //minLines: 1,
                                //maxLines: 5,
                                decoration:InputDecoration(

                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white,width: 3 ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white, width: 2),
                                    ),
                                    hintText: 'Type a massage',
                                    hintStyle: TextStyle(
                                        color: Color(0xffBEBEBE),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    )
                                ),
                  ),
                              ),
                              SizedBox(width: 3,),
                              Container(
                                height: 48,width: 47,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.white),
                                child: Icon(Icons.send,color: Colors.blue,),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 124,
                              width: 124,
                              decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4.0)],

                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.videocam_outlined,color: Colors.blue,size: 60,),
                            ),
                            SizedBox(height: 10,),
                            Text('Start Video Call',style: TextStyle(
                              color: Color(0xff2C2C2C),
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                            ),)
                          ],
                        )
                  ]),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
