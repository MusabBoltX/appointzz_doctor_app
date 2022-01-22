import 'package:flutter/material.dart';


class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 190,
      height: 50,
      child: RaisedButton(
          color: const Color.fromRGBO(7, 78, 99, 0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

        onPressed: (){
          // Navigator.push(context,
          //   CupertinoPageRoute(builder: (context) => HomePage()));
        },

        child: const Text('LOGIN', style: TextStyle(color: Colors.white, letterSpacing: 1),),

      ),
    );
  }
}