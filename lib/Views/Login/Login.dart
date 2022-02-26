import 'package:doctor_appointzz/Services/ColorPicker.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Dentist/dent.dart';
import 'package:doctor_appointzz/Views/Login/Login_Button.dart';
import 'package:doctor_appointzz/Views/WaitingLobby/waitinglobby.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginAs extends StatefulWidget {
  const LoginAs({Key? key}) : super(key: key);

  @override
  _LoginAsState createState() => _LoginAsState();
}

class _LoginAsState extends State<LoginAs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assests/REQUEST.png"),
              Text(
                "\nRequest Access\n\n",
                style: Theme.of(context).textTheme.headline5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: cleanWhite,
                  border: Border.all(color: Colors.transparent),
                  backgroundBlendMode: BlendMode.darken,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton(
                  // iconEnabledColor: Colors.black54,
                  iconSize: 35,
                  hint: const Text(
                    'Request Access As',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  // Not necessary for Option 1
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue.toString();
                      // print(_selectedLocation);
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: Text(
                        location,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              LoginButton(
                tapAction: () {
                  if (_selectedLocation == null || _selectedLocation!.isEmpty) {
                    Fluttertoast.showToast(msg: "Please select the doctor type");
                  } else {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => WaitingLobby(
                          doctorType: _selectedLocation,
                          requestString: "requested",
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> _locations = [
    'Dentist',
    'Child Specialist',
    'Dermatology',
    'General Physician',
    'Gynaecology',
    'Nutritionist',
    'Psychological Therapy',
  ]; // Option 2

  String? _selectedLocation;

}
