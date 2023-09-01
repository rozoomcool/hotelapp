import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String label;
  VoidCallback onPressed;

  CustomButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.only(top: 15.0, bottom: 14.0),
            elevation: 0,
            foregroundColor: const Color(0xFF0D72FF),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)))),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              letterSpacing: 0.1,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
