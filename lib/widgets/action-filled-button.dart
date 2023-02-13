import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/border-side-radius.dart';
import 'package:flutter_test_task/constants/button-size.dart';

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
        backgroundColor: MaterialStateProperty.all(const Color(0xff03010D)),
        minimumSize:
            MaterialStateProperty.all(const Size.fromHeight(ButtonSize.actionButtonHeight)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderSideRadius.borderRadius),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
