import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/border-side-radius.dart';
import 'package:flutter_test_task/constants/insets.dart';
import 'package:flutter_test_task/constants/sized-box-size.dart';

class UserLabel extends StatelessWidget {
  final String avatar;
  final String userName;
  final String training;

  const UserLabel({
    Key? key,
    required this.avatar,
    required this.userName,
    required this.training,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.paddingMedium,
        vertical: 12,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(BorderSideRadius.borderRadius)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(avatar),
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: SizedBoxSize.smallSize),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff03010D),
                ),
              ),
              Text(
                training,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9B99A0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
