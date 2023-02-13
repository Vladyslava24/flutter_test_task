import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/info-constants.dart';
import 'package:flutter_test_task/constants/insets.dart';
import 'package:flutter_test_task/constants/sized-box-size.dart';
import 'package:flutter_test_task/widgets/image-slider.dart';
import 'package:flutter_test_task/widgets/training-place-text.dart';
import 'package:flutter_test_task/widgets/user-label.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ImageSlider(),
                  const SizedBox(height: SizedBoxSize.mediumSize),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Insets.paddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          InfoConstants.fitboxing,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff03010D),
                          ),
                        ),
                        SizedBox(height: SizedBoxSize.largeSize),
                        TrainingPlaceText(
                          trainingTime: InfoConstants.trainingTime,
                          address: InfoConstants.address,
                        ),
                        SizedBox(height: SizedBoxSize.mediumSize),
                        UserLabel(
                          avatar: InfoConstants.avatarPath,
                          userName: InfoConstants.username,
                          training: InfoConstants.boxing,
                        ),
                        SizedBox(height: SizedBoxSize.mediumSize),
                        Text(
                          InfoConstants.generalInfo,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          InfoConstants.importantInfo,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff03010D),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          InfoConstants.trainingInfo,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: const [
              Divider(
                height: 0,
                color: Color(0xff9B99A0),
              ),
              SizedBox(height: 87),
            ],
          ),
        ],
      ),
    );
  }
}
