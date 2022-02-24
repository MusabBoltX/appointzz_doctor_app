import 'package:doctor_appointzz/Views/HomeScreen/Appointment%20Room/appointment_room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  final String? title, description, appointmentNumber;

  const DoctorCard({
    Key? key,
    this.appointmentNumber,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 1),
                  blurRadius: 5,
                ),
              ]),
          child: Column(
            children: [
              // -- Data Items & Image -- //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title.toString(),
                        textScaleFactor: 1.0,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.appointmentNumber.toString(),
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // -- Buttons -- //
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const Meeting(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    color: const Color.fromRGBO(7, 78, 99, 0.7),
                    child: const Text(
                      'Appointment Room',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 232, 225, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    color: const Color.fromRGBO(7, 78, 99, 0.7),
                    child: const Text(
                      'Details',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 232, 225, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Constants {
  Constants._();
  static const double padding = 40;
  static const double avatarRadius = 40;
}
