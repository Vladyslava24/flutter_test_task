import 'package:flutter/material.dart';

class TrainingPlaceText extends StatelessWidget {
  final String trainingTime;
  final String address;

  const TrainingPlaceText({
    Key? key,
    required this.trainingTime,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          trainingTime,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff03010D),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          address,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff9B99A0),
          ),
        ),
      ],
    );
  }
}
