import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:untitled/View/Nutrition/view_all.dart';
import 'book_appointment.dart';
import 'doctor_list.dart';

class AppointmentForPatient extends StatefulWidget {
  @override
  _AppointmentForPatientState createState() => _AppointmentForPatientState();
}

class _AppointmentForPatientState extends State<AppointmentForPatient> {
  // bool isPatient = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF359CB6),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Book Appointment',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18, fontFamily: 'sans'),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Card(
                    elevation: 0.8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xff359CB6),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child:SvgPicture.asset('assets/appointment/group.svg'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Dr. Saifullah',
                                        style: TextStyle(
                                            color: Color(0xFF2C2C2C),
                                            fontFamily: 'sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        'Urologist',
                                        style: TextStyle(
                                            fontFamily: 'sans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffBEBEBE)),
                                      ),
                                      Text(
                                        'M.B.B.S, F.C.P.S, (Urology)',
                                        style: TextStyle(
                                            color: Color(0xffBEBEBE),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'sans'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF359CB6),
                                ),
                                child: Text(
                                  'Gold',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height:60,
                                width: 93,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Wait Time',
                                        style: TextStyle(
                                            fontSize: 12,

                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'sans'),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Center(
                                      child: Text(
                                        '15 m',
                                        style: TextStyle(
                                            color: Color(0xff359CB6),
                                            fontSize: 14, fontFamily: 'sans',fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                width: 3,
                              ),
                              Container(
                                height:60 ,
                                width:93,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Experience',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'sans'),
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Center(
                                      child: Text(
                                        '10 year',
                                        style: TextStyle(
                                            color: Color(0xff359CB6),
                                            fontSize: 14,fontWeight: FontWeight.w600, fontFamily: 'sans'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                width: 3,
                              ),
                              Container(
                                height: 60,
                                width: 93,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text(
                                        'Satisfied',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(height: 3,),
                                    Center(
                                      child: Text(
                                        '100 %',
                                        style: TextStyle(
                                            color: Color(0xff359CB6),
                                            fontSize: 14,fontWeight: FontWeight.w600, fontFamily: 'sans'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xffF2F2F2),
                    elevation: 0.8,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Book Appointment',
                            style: TextStyle(
                              color: Color(0xff2C2C2C),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                fontFamily: 'sans'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // Divider(),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/appointment/'),
                                Text(
                                  'City Hospital',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'sans'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Rs. 1500',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sans'),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_checked,
                                            color: Color(0xff359CB6),
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Available Today',
                                            style: TextStyle(
                                                color: Color(0xff359CB6),
                                                fontFamily: 'sans',
                                                fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '9 AM - 2 PM',
                                        style: TextStyle(fontFamily: 'sans'),
                                      ),
                                      Text(
                                        '2 PM - 6 PM',
                                        style: TextStyle(fontFamily: 'sans'),
                                      ),
                                      Text(
                                        '9 PM - 11 PM',
                                        style: TextStyle(fontFamily: 'sans'),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                                onTap: () {
                                  Get.to(BookAppointment());
                                },
                                child: customButton(txt: 'Book Appointment')),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xffF2F2F2),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xFF359CB6),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Reviews ',
                                style: TextStyle(
                                    color: Color(0xFF2C2C2C),
                                    fontFamily: 'sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          // Divider(),
                          Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF359CB6),
                                    child: Text(
                                      '97%',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Satisfied out of\n862 patients',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Doctor Checkup'),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 5,
                                        color: Color(0xFF359CB6),
                                      ),
                                      SizedBox(width: 10),
                                      Text('97%'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Clinic enviroonment',style: TextStyle(
                                    color: Color(0xff2C2C2C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                  ),),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 5,
                                        color: Color(0xFF359CB6),
                                      ),
                                      SizedBox(width: 10),
                                      Text('99%')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Staff behaviour'),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 5,
                                        color: Color(0xFF359CB6),
                                      ),
                                      SizedBox(width: 10),
                                      Text('98%')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Container(
                          //   width: MediaQuery.of(context).size.width,
                          //   padding: EdgeInsets.symmetric(
                          //       horizontal: 10, vertical: 10),
                          //   decoration: BoxDecoration(
                          //       border: Border.all(color: Colors.grey[100]!),
                          //       borderRadius:
                          //           BorderRadius.all(Radius.circular(10))),
                          //   child: Text(
                          //     'Highly recmended',
                          //     style: TextStyle(color: Colors.grey),
                          //   ),
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(ViewAllScreen());
                            },
                            child: Container(
                              width: 93,
                              alignment: Alignment.center,
                              // width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff359CB6)),
                                  color: Color(0xff359CB6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Text(
                                'View all',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget profileContainer(
      {required String titleText,
      required String subTitleText,
      required IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xFF121940),
      ),
      title: Text(
        titleText,
        style: TextStyle(
          color: Color(0xFF121940),
        ),
      ),
      subtitle: Text(
        subTitleText,
        style: TextStyle(
          color: Color(0xFF121940),
        ),
      ),
    );
  }

  Widget customButton({required String txt}) {
    return Container(
      width: 167,
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xff359CB6),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(
        txt,
        style: TextStyle(color: Colors.white, fontFamily: 'sans'),
      ),
      alignment: Alignment.center,
    );
  }
}
