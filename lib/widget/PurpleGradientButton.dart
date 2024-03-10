import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PurpleGradientButton extends StatefulWidget {
  String text;
  PurpleGradientButton({super.key, required this.text});

  @override
  State<PurpleGradientButton> createState() => _PurpleGradientButtonState();
}

class _PurpleGradientButtonState extends State<PurpleGradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(143, 148, 251, 1),
            Color.fromRGBO(143, 148, 251, .6),
          ],
        ),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
