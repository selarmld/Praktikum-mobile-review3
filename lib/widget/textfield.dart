import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  TextEditingController Controller = TextEditingController();
  String? label, hint;

  CustomTextfield(
      {super.key,
      required this.Controller,
      required this.label,
      required this.hint});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    if (widget.label == "password") {
      obscureText = true;
    }

    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: widget.Controller,
        decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
        // obscureText: true, // agar passwordnya titik
        obscureText: obscureText,
      ),
    );
  }
}
