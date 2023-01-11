import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Chat_Screen/text_screen.dart';
import 'appointment_for_patient.dart';
class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF359CB6),
        title: Text(
          'Urologists in Islamabad',
          style: TextStyle(color: Colors.white, fontFamily: 'sans',fontSize: 18,fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              onPressed: () {
                Get.to(TextScreen());
              })
        ],
      ),
      body: Column(
        children: [
          Card(
            elevation: 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: textFieldContainer(
                        txt: 'Search.. '),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Container(
                  //   height: 30,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       filterContainer(filterTxt: 'Discount'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Near me'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Video consult'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Availability'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'Gender'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       filterContainer(filterTxt: 'online now'),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 0.5,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Color(0xff359CB6),
                                              borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(30))),
                                          child: SvgPicture.asset('assets/appointment/group.svg'),

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
                                                  color: Color(0xFF121940),
                                                  fontFamily: 'sans',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1),
                                            ),
                                            Text(
                                              'Urologist',
                                              style: TextStyle(
                                                  letterSpacing: 1,
                                                  fontFamily: 'sans',
                                                  color: Color(0xffBEBEBE)),
                                            ),
                                            Text(
                                              'M.B.B.S, F.C.P.S, (Urology)',
                                              style: TextStyle(
                                                  color: Color(0xffBEBEBE),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                  height: 10,
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
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 55,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Zeenat Medical Complex',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'sans',
                                          fontWeight: FontWeight.w500,fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff359CB6)),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Available on monday',
                                              style: TextStyle(
                                                  color: Color(0xff359CB6),
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Text(
                                          'Rs. 1000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: SizedBox(
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Container(
                                    //   padding: EdgeInsets.symmetric(
                                    //       horizontal: 5, vertical: 10),
                                    //   decoration: BoxDecoration(
                                    //     border: Border.all(
                                    //         color: Colors.blue[800]),
                                    //     borderRadius: BorderRadius.all(
                                    //         Radius.circular(5)),
                                    //   ),
                                    //   child: Row(
                                    //     children: [
                                    //       Icon(
                                    //         Icons.video_call_outlined,
                                    //         color: Colors.blue[800],
                                    //         size: 15,
                                    //       ),
                                    //       Text(
                                    //         'Video consultant',
                                    //         style: TextStyle(
                                    //             color: Colors.blue[900]),
                                    //       )
                                    //     ],
                                    //   ),
                                    // ),

                                    Align(
                                      alignment:Alignment.center,
                                      child: InkWell(
                                        onTap: () {

                                          Get.to(()=>AppointmentForPatient());
                                        },
                                        child: Container(
                                            height: 45,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Color(0xff359CB6),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                            ),
                                            child: Text(
                                              'Book Appoinment',
                                              style: TextStyle(
                                                  fontFamily: 'Sans',
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }

  Widget filterContainer({required String filterTxt}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF359CB6)),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        filterTxt,
        style: TextStyle(color: Color(0xFF121940)),
      ),
    );
  }

  Widget textFieldContainer({required String txt}) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Color(0xFF359CB6),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        hintText: txt,
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xff359CB6),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Color(0xff359CB6),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xff359CB6),
          ),
        ),
      ),
    );
  }
}
