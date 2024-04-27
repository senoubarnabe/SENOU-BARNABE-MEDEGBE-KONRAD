import 'package:flutter/material.dart';

class ButtonForm extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

 ButtonForm({super.key, required this.text,  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
        onPressed: onPressed,
        child:Text(
          "$text".toUpperCase(),
          style: TextStyle(fontSize: 16),
        )
    );
  }
}
