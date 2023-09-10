import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) setValue;
  final String hintText;

  const CustomTextField(
      {super.key, required this.setValue, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 217, 206, 206),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: setValue,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
