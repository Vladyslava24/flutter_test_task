import 'package:flutter/material.dart';

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
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(avatar),
            backgroundColor: Colors.white,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff03010D),
                ),
              ),
              Text(
                training,
                style: TextStyle(
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
