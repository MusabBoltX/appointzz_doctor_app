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
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Welcome Doctor",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
              textAlign: TextAlign.start,
            ),
            Text("\nUpcoming Appointments\n",
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle2,
              textAlign: TextAlign.start,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const DoctorCard(
                      title: "Mr. Ahmed",
                      appointmentNumber: "001",
                      description: "Headache",
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}