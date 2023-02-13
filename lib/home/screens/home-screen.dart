import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_task/constants/info-constants.dart';
import 'package:flutter_test_task/constants/insets.dart';
import 'package:flutter_test_task/constants/sized-box-size.dart';
import 'package:flutter_test_task/widgets/action-filled-button.dart';
import 'package:flutter_test_task/widgets/image-slider.dart';
import 'package:flutter_test_task/widgets/training-place-text.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ImageSlider(),
                    const SizedBox(height: Insets.paddingMedium),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Insets.paddingMedium),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            InfoConstants.username,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff03010D),
                            ),
                          ),
                          SizedBox(height: SizedBoxSize.largeSize),
                          TrainingPlaceText(
                            trainingTime: InfoConstants.trainingTime,
                            address: InfoConstants.address,
                          ),
                          SizedBox(height: SizedBoxSize.mediumSize),
                          Text(
                            InfoConstants.generalInfo,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 22),
                          Text(
                            InfoConstants.importantInfo,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff03010D),
                            ),
                          ),
                          SizedBox(height: 6),
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
              children: [
                const Divider(
                  height: 0,
                  color: Color(0xFFD9D9DB),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Insets.paddingMedium),
                  child: ActionFilledButton(
                    text: 'Booking',
                    onPressed: () {
                      context.go('/about');
                    },
                  ),
                ),
                const SizedBox(height: 23),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
