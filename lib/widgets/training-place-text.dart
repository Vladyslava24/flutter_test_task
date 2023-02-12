import 'package:flutter/material.dart';

class TrainingPlaceText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '15.02 | 14:00 (55) хв',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff03010D),
          ),
        ),
        SizedBox(height: 3),
        Text(
          'Zhylianska St, 41А, Kyiv, 01033',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff9B99A0),
          ),
        ),
      ],
    );
  }
}
