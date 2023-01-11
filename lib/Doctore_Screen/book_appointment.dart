import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/custom_button.dart';



class BookAppointment extends StatefulWidget {
  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  int dietPosition=0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Time Slot'),
        centerTitle: true,
        backgroundColor: Color(0xff359CB6),
      ),
      body: Stack(children: [
        ListView(
          children: [
            Card(
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                child: Row(
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
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr Saifullah',
                          style: TextStyle(
                              color: Color(0xff2C2C2C),
                              fontWeight: FontWeight.w500,
                          fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'City Hospital, Bosan Road, Multan',
                          style: TextStyle(
                            color: Color(0xffBEBEBE),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Fee 1500',
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffBEBEBE)),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: Padding(
                padding:  EdgeInsets.only(top: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Select Date',style: TextStyle(color: Color(0xff2C2C2C),fontSize: 18,fontWeight: FontWeight.w500),),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                      child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Color(0xff359CB6),
                        selectedTextColor: Colors.white,
                        onDateChange: (date) {
                          // New date selected
                          setState(() {
                            _selectedValue = date;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text('Select Time',style: TextStyle(color: Color(0xff2C2C2C),fontSize: 18,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10,right: 5),
                      child:SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                            itemBuilder: (context ,index){
                            bool isSelect=(index == dietPosition);

                          return  InkWell(
                            onTap: (){
                              setState(() {
                                dietPosition=index;
                              });
                            },
                            child: Container(
                              margin:EdgeInsets.only(left: 10),
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                color: isSelect?Color(0xff359CB6):Colors.white,
                                border: Border.all(color: Color(0xff359CB6)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                              ),
                              child: const Center(
                                child: Text('11:00 am',style:TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14,),),
                              ),
                             ),
                          );

                        }),
                      )
                    )

                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    //   child: Wrap(children: [
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: Container(
                    //         decoration:  BoxDecoration(
                    //             color: c1 ? Color(0xff359CB6)
                    //                 : Colors.white,
                    //
                    //             border: Border.all(
                    //               color: Color(0xff359CB6),
                    //             ),
                    //             borderRadius:  BorderRadius.all(Radius.circular(10.0),
                    //             )),
                    //         child:  ChoiceChip(
                    //
                    //           backgroundColor: c1 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //           label: new Text(
                    //             '10:00 am',style: TextStyle(color:c1 ? Colors.white
                    //               : Colors.black,),
                    //           ), onSelected:(val){
                    //
                    //             setState(() {
                    //               c1=val;
                    //               c2=false;
                    //             });
                    //
                    //
                    //         }, selected: c1 ,
                    //           selectedColor:c1 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: Container(
                    //         decoration:  BoxDecoration(
                    //             color: c2 ? Color(0xff359CB6)
                    //                 : Colors.white,
                    //
                    //             border: Border.all(
                    //               color: Color(0xff359CB6),
                    //             ),
                    //             borderRadius:  BorderRadius.all(Radius.circular(10.0),
                    //             )),
                    //         child:  ChoiceChip(
                    //
                    //           backgroundColor:c2 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //           label: new Text(
                    //             '10:00 am',style: TextStyle(color:c2 ? Colors.white
                    //               : Colors.black,),
                    //           ), onSelected:(val){
                    //
                    //           setState(() {
                    //
                    //             c2=val;
                    //           });
                    //
                    //
                    //         }, selected: c2 ,
                    //           selectedColor:c2 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: Container(
                    //         decoration:  BoxDecoration(
                    //             color: c3 ? Color(0xff359CB6)
                    //                 : Colors.white,
                    //
                    //             border: Border.all(
                    //               color: Color(0xff359CB6),
                    //             ),
                    //             borderRadius:  BorderRadius.all(Radius.circular(10.0),
                    //             )),
                    //         child:  ChoiceChip(
                    //
                    //           backgroundColor: c3 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //           label: new Text(
                    //             '10:00 am',style: TextStyle(color:c3 ? Colors.white
                    //               : Colors.black,),
                    //           ), onSelected:(val){
                    //
                    //           setState(() {
                    //             c3=val;
                    //           });
                    //
                    //
                    //         }, selected: c3 ,
                    //           selectedColor:c3 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: Container(
                    //         decoration:  BoxDecoration(
                    //             color:c4 ? Color(0xff359CB6)
                    //                 : Colors.white,
                    //
                    //             border: Border.all(
                    //               color: Color(0xff359CB6),
                    //             ),
                    //             borderRadius:  BorderRadius.all(Radius.circular(10.0),
                    //             )),
                    //         child:  ChoiceChip(
                    //
                    //           backgroundColor: c4 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //           label: new Text(
                    //             '10:00 am',style: TextStyle(color:c4 ? Colors.white
                    //               : Colors.black,),
                    //           ), onSelected:(val){
                    //
                    //           setState(() {
                    //             c4=val;
                    //           });
                    //
                    //
                    //         }, selected: c4 ,
                    //           selectedColor:c4 ? Color(0xff359CB6)
                    //               : Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //
                    //   ]),
                    // ),
                  ],
                ),
              ),
            ),

          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {

            },
            child: CustomBotton(
              title: 'Confirm Appointment',
            ),
          ),
        )
      ]),
    );
  }
}
