import 'package:doctor_appointzz/AlertBoxes/access_denied.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Child%20Specialist/child_sp.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Dentist/dent.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Dermatology/derma.dart';
import 'package:doctor_appointzz/Views/HomeScreen/General%20Physician/gp.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Gynaecology/gynae.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Nutritionist/nut.dart';
import 'package:doctor_appointzz/Views/HomeScreen/Psychological%20Therapy/psych.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaitingLobby extends StatefulWidget {
  final String? doctorType;
  final String? requestString;

  const WaitingLobby({
    Key? key,
    required this.doctorType,
    required this.requestString,
  }) : super(key: key);

  @override
  _WaitingLobbyState createState() => _WaitingLobbyState();
}

class _WaitingLobbyState extends State<WaitingLobby> {
  @override
  void initState() {
    super.initState();
    _checkAccessType();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assests/waiting.png"),
                const SizedBox(height: 25),
                Text(
                  "Request sent as a ${widget.doctorType}\n\nPlease wait until your request is approved...",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final dbRef = FirebaseDatabase.instance.ref();

  /// Dentist
  String? requestAsDentist;

  void _readDentistDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('001/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsDentist = des as String?;
      });

      if (requestAsDentist == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const DentistHome(),
          ),
        );
      } else if (requestAsDentist == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('001/doctor_access')
            .set("requested");
      } else if (requestAsDentist == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }
    });
  }

  /// Child Spec
  String? requestAsChildSpecialist;

  void _readChildSpecialistDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('002/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsChildSpecialist = des as String?;
      });

      if (requestAsChildSpecialist == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const ChildSpecialistHome(),
          ),
        );
      } else if (requestAsChildSpecialist == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('002/doctor_access')
            .set("requested");
      } else if (requestAsChildSpecialist == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }

    });
  }

  /// Dermatology
  String? requestAsDermatology;

  void _readDermatologyDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('003/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsDermatology = des as String?;
      });

      if (requestAsDermatology == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const DermatologyHome(),
          ),
        );
      } else if (requestAsDermatology == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('003/doctor_access')
            .set("requested");
      } else if (requestAsDermatology == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }
    });
  }

  /// General Physician
  String? requestAsGeneralPhysician;

  void _readGeneralPhysicianDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('004/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsGeneralPhysician = des as String?;
      });

      if (requestAsGeneralPhysician == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const GeneralPhysicianHome(),
          ),
        );
      } else if (requestAsGeneralPhysician == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('004/doctor_access')
            .set("requested");
      } else if (requestAsGeneralPhysician == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }
    });
  }

  /// Gynaecology
  String? requestAsGynaecology;

  void _readGynaecologyDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('005/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsGynaecology = des as String?;
      });

      if (requestAsGynaecology == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const GynaeHome(),
          ),
        );
      } else if (requestAsGynaecology == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('005/doctor_access')
            .set("requested");
      } else if (requestAsGynaecology == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }
    });
  }

  /// Nuts
  String? requestAsNutritionist;

  void _readNutritionistDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('006/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsNutritionist = des as String?;
      });
      if (requestAsNutritionist == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const NutritionistHome(),
          ),
        );
      } else if (requestAsNutritionist == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('006/doctor_access')
            .set("requested");
      } else if (requestAsNutritionist == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }
    });
  }

  /// Psyco
  String? requestAsPsychologicalTherapy;

  void _readPsychologicalTherapyDatabase() async {
    dbRef
        .child('Appointzz')
        .child('Specialty')
        .child('007/doctor_access')
        .onValue
        .listen((event) {
      final des = event.snapshot.value;
      debugPrint(des.toString());

      setState(() {
        requestAsPsychologicalTherapy = des as String?;
      });

      if (requestAsPsychologicalTherapy == "granted") {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => const PsychologicalTherapyHome(),
          ),
        );
      } else if (requestAsPsychologicalTherapy == "logged_out") {
        debugPrint("requested");
        dbRef
            .child('Appointzz')
            .child('Specialty')
            .child('007/doctor_access')
            .set("requested");
      } else if (requestAsDentist == "denied") {
        _showDialog();
      } else {
        debugPrint("else waiting");
      }
    });
  }

  void _checkAccessType() {
    if (widget.doctorType == "Dentist") {
      _readDentistDatabase();
    } else if (widget.doctorType == "Child Specialist") {
      _readChildSpecialistDatabase();
    } else if (widget.doctorType == "Dermatology") {
      _readDermatologyDatabase();
    } else if (widget.doctorType == "General Physician") {
      _readGeneralPhysicianDatabase();
    } else if (widget.doctorType == "Gynaecology") {
      _readGynaecologyDatabase();
    } else if (widget.doctorType == "Nutritionist") {
      _readNutritionistDatabase();
    } else if (widget.doctorType == "Psychological Therapy") {
      _readPsychologicalTherapyDatabase();
    }
  }

  Future _showDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const DeniedAccessBox();
      },
    );
  }
}
