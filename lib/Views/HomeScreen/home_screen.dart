import 'package:doctor_appointzz/Views/HomeScreen/DoctorListCard/doctor_card.dart';
import 'package:flutter/material.dart';

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  _DoctorHomeScreenState createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Welcome Dr. Johnny",
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle2,
            ),
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const DoctorCard();
                }),
          ],
        ),
      ),
    );
  }
}