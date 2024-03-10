import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  String hintText;

  TextForm({super.key, required this.hintText});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade100),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey.shade400),
        ),
      ),
    );
  }
}
