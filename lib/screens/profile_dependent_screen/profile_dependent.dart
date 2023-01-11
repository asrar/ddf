// import 'package:ddf/appointment_history.dart';
import 'package:ddf/screens/appointment.dart';
import 'package:ddf/screens/appointment_history.dart';
import 'package:ddf/screens/report_list%20Screen.dart';
import 'package:flutter/material.dart';

class ProfileDependent extends StatefulWidget {
  const ProfileDependent({Key? key}) : super(key: key);

  @override
  State<ProfileDependent> createState() => _ProfileDependentState();
}

class _ProfileDependentState extends State<ProfileDependent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Color(0xff0e756a),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff0e756a),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.person,
                                  size: 60, color: Color(0xff0e756a)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Asrar ul Hasan',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'You',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Appointment()));
                        },
                        child: Text(
                          'Create Appointment',
                          style: TextStyle(color: Color(0xff0e756a)),
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Text('Temprature'), Text('98')],
              ),
              Container(
                width: 2,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color(0xff0e756a),
                )),
              ),
              Column(
                children: [Text('Blood Pressure'), Text('120/80')],
              ),
              Container(
                width: 2,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color(0xff0e756a),
                )),
              ),
              Column(
                children: [Text('Sugar'), Text('90')],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReportListScreen()));
                },
                child: Card(
                  elevation: 7,
                  child: Container(
                    height: 70,
                    color: Color(0xff0e756a),
                    child: Center(
                      child: Text(
                        'Test Reports',
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => FamilyMemberList()));
                },
                child: Card(
                  elevation: 7,
                  child: Container(
                    height: 70,
                    color: Color(0xff0e756a),
                    child: Center(
                      child: Text(
                        'Appointment',
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AppointmentHistory()));
                },
                child: Card(
                  elevation: 7,
                  child: Container(
                    height: 70,
                    color: Color(0xff0e756a),
                    child: Center(
                      child: Text(
                        'Appoints History',
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
