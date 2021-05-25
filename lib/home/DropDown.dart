import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

        Container(
            padding: const EdgeInsets.all(0.0),
            //child: SizedBox(height: 300,),
            child: Center(
              child: DropdownButton<String>(
                  value: _chosenValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.black),

                  items: <String>[
                    'Ahmedabaad',
                    'Bangalore',
                    'Chennai',
                    'Delhi',
                    'Mumbai',
                    'Noida',
                    'Pune',
                  ].map<DropdownMenuItem<String>>((String value) {
                    SizedBox(height: 300,);
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "Please choose a Place",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _chosenValue = value;
                    });
                  }
              ),
            )
        )

    );
  }
}
