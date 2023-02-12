import 'package:flutter/material.dart';

class ActionFilledButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ActionFilledButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xff03010D)),
        minimumSize: MaterialStateProperty.all(Size.fromHeight(48)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
