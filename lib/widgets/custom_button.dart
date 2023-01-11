import 'package:flutter/material.dart';



class CustomBotton extends StatelessWidget {
  String title;
  CustomBotton({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(30.0),
        child: Container(
          height: 55.0,
          width: 600.0,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.2,
                fontFamily: "Sans",
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff0e756a),
            // gradient: LinearGradient(
            //     colors: <Color>[Color(0xFF121940), Color(0xFF6E48AA)])
          ),
        ),
      );
   // );
  }
}