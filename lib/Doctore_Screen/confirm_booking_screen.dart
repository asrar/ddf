import 'package:flutter/material.dart';

class ConfirmBookingScreen extends StatefulWidget {
  const ConfirmBookingScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmBookingScreen> createState() => _ConfirmBookingScreenState();
}

class _ConfirmBookingScreenState extends State<ConfirmBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Booking'),
        centerTitle: true,
        backgroundColor: Color(0xff0e756a),
      ),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
