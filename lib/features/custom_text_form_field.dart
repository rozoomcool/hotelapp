import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget{
  CustomTextFormField({super.key, required this.labelText, this.initialValue});

  String labelText;
  String? initialValue;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.labelMedium,
          filled: true,
          fillColor: const Color(0xFFF6F6F9),
          border: const UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          )
      ),
    );
  }
}