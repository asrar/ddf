import 'package:flutter/material.dart';

class TextFromField extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  bool password;
  String email;
  IconData icon;
  TextInputType inputType;
  void Function(String?)? onChanged;
  final String? Function(String?)? validator;

  TextFromField(
      {
        required this.controller,
        required this.email,
      required this.icon,
        this.validator,
       required this.onChanged,
      required this.inputType,
      required this.password});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 50.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Color(0xffCAC531),)
            // boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]
            ),
        padding:
            EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            onChanged: onChanged,
            controller: controller,
            cursorColor: Color(0xffCAC531),
            obscureText: password,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: email,
                icon: Icon(
                  icon,
                  color: Color(0xffCAC531),
                ),
                labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sans',
                    letterSpacing: 0.3,
                    color: Color(0xffBEBEBE),
                    fontWeight: FontWeight.w400),
            ),
            keyboardType: inputType,
          ),
        ),
      ),
    );
  }
}
