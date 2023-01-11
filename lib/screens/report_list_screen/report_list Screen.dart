import 'package:ddf/screens/report.dart';
import 'package:ddf/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class ReportListScreen extends StatefulWidget {
  // const ReportListScreen({Key? key}) : super(key: key);

  @override
  State<ReportListScreen> createState() => _ReportListScreenState();
}

class _ReportListScreenState extends State<ReportListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Color(0xff0e756a),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: textFromField(
                icon: Icons.search,
                email: 'Search Reports',
                inputType: TextInputType.emailAddress,
                password: false),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Report()));
                },
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CBC Test',
                        style: TextStyle(
                            color: Color(0xff0e756a),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '22 Jul 2022',
                      ),
                    ],
                  ),
                )),
              ),
            );
          }))
        ],
      ),
    );
  }
}
