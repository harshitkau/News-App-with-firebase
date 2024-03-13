import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String label;
  final bool? isPassword;
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.label,
      required this.isPassword});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var showPassword = false;
  makePassVisible() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: widget.isPassword == false
              ? null
              : Icon(showPassword == true ? Icons.lock_open : Icons.lock)
                  .onTap(() {
                  makePassVisible();
                }),
          hintText: widget.hint,
          hintStyle: AppStyles().regular(),
          labelText: widget.label,
          labelStyle: AppStyles().semibold()),
      obscureText: widget.isPassword! && !showPassword,
    );
  }
}
