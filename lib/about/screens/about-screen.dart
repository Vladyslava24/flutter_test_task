import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/border-side-radius.dart';
import 'package:flutter_test_task/constants/button-size.dart';
import 'package:flutter_test_task/constants/info-constants.dart';
import 'package:flutter_test_task/constants/insets.dart';
import 'package:flutter_test_task/constants/sized-box-size.dart';
import 'package:flutter_test_task/widgets/action-filled-button.dart';
import 'package:flutter_test_task/widgets/image-slider.dart';
import 'package:flutter_test_task/widgets/training-place-text.dart';
import 'package:flutter_test_task/widgets/user-label.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
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
                                TrainingPlaceText(
                                  trainingTime: InfoConstants.trainingTime,
                                  address: InfoConstants.address,
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.ac_unit,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                                Text(
                                  'Залишилося\n2 місця',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff03010D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: SizedBoxSize.mediumSize),
                        const UserLabel(
                          avatar: InfoConstants.avatarPath,
                          userName: InfoConstants.username,
                          training: InfoConstants.boxing,
                        ),
                        const SizedBox(height: SizedBoxSize.mediumSize),
                        const Text(
                          InfoConstants.generalInfo,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 26),
                        const Text(
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
                color: Color(0xff9B99A0),
              ),
              const SizedBox(height: SizedBoxSize.mediumSize),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Insets.paddingMedium),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => context.go('/home'),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(ButtonSize.actionButtonHeight),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(BorderSideRadius.borderRadius),
                            ),
                          ),
                          side:
                              MaterialStateProperty.all(const BorderSide(color: Color(0xff03010D))),
                        ),
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff03010D),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: SizedBoxSize.smallSize),
                    Expanded(
                      child: ActionFilledButton(
                        text: 'Add calendar',
                        onPressed: () {
                          context.go('/saved');
                          const snackBar = SnackBar(
                            padding: EdgeInsets.only(top: Insets.paddingMedium, bottom: 23),
                            backgroundColor: Color(0xffF5F5F5),
                            closeIconColor: Color(0xff03010D),
                            duration: Duration(minutes: 1),
                            showCloseIcon: true,
                            content: Text(
                              'Saved',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff03010D),
                              ),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 23),
            ],
          ),
        ],
      ),
    );
  }
}
