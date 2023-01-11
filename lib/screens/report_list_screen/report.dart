import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
        centerTitle: true,
        backgroundColor: Color(0xff0e756a),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
          child: Card(
            elevation: 5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'CBC Test Report',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0e756a)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Uploaded',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0e756a)),
                          ),
                          Text(
                            '22 Jul 2022',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    child:
                        Image(image: AssetImage('assets/appointment/aad.jpg')))
              ],
            ),
          ),
        );
      }),
    );
  }
}
