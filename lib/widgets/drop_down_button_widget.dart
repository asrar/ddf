import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  @override
  _DropDownButtonWidgetState createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff4441e5)),
                borderRadius: BorderRadius.circular(30)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xff4441e5),
                  size: 30,
                ),
                isExpanded: true,
                value: _chosenValue,
                //elevation: 5,
                style: TextStyle(color: Colors.black),

                items: <String>[
                  'Father',
                  'Mother',
                  'Wife',
                  'Husband',
                  'Brother',
                  'Sister',
                  'Son',
                  'Daughter'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Color(0xff4441e5),
                        fontSize: 16,
                      ),
                    ),
                  );
                }).toList(),
                hint: Text(
                  "Select relation",
                  style: TextStyle(
                    color: Color(0xff4441e5),
                    fontSize: 16,
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _chosenValue = value!;
                  });
                },
              ),
            ),
          ),


    );
  }
}
