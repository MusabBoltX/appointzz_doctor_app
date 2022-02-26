import 'package:flutter/material.dart';

class DeniedAccessBox extends StatefulWidget {

  const DeniedAccessBox({
    Key? key,
  }) : super(key: key);

  @override
  _DeniedAccessBoxState createState() => _DeniedAccessBoxState();
}

class _DeniedAccessBoxState extends State<DeniedAccessBox> {
  @override

  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AlertBoxConst.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Container(
      padding: const EdgeInsets.only(
          left: AlertBoxConst.padding -5,
          top: AlertBoxConst.padding,
          right: AlertBoxConst.padding - 5,
          bottom: AlertBoxConst.padding
      ),
      margin: const EdgeInsets.only(top: AlertBoxConst.avatarRadius),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black,offset: Offset(0,1),
                blurRadius: 1
            ),
          ]
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            Image.asset("assests/access_denied.png"),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(AlertBoxConst.padding),
              child: Text(
                  "Access Denied",
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class AlertBoxConst{
  AlertBoxConst._();
  static const double padding = 15;
  static const double avatarRadius = 45;
}