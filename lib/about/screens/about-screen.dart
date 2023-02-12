import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSlider(),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fitboxing',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff03010D),
                                  ),
                                ),
                                TrainingPlaceText(
                                  trainingTime: '15.02 | 14:00 (55) хв',
                                  address: 'Zhylianska St, 41А, Kyiv, 01033',
                                ),
                              ],
                            ),
                            Column(
                              children: [
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
                        SizedBox(height: 16),
                        UserLabel(
                          avatar: 'asset/images/avatar.png',
                          userName: 'Дмитро Казаков',
                          training: 'Boxing',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Відчуй і збільш свою силу на боксінгу.\n'
                          'Розкріпачуйся в темному залі під\nпотужний біт хіп-хопу. '
                          'Став удар на\nгрушах',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 26),
                        Text(
                          'На тренування необхідно взяти будь-яку\nспортивну форму, що не сковує рухів,\nкросівки та гелеві бинти, придбати\nможна в студії за 500 грн.\n\n'
                          'Ми дбаємо про Вашу безпеку, тому не\nдопускаємо до занять у разі запізнення\nбільш, ніж на 5 хвилин з початку\nтренування.',
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
              Divider(
                height: 0,
                color: Color(0xff9B99A0),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => context.go('/home'),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size.fromHeight(48)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          side: MaterialStateProperty.all(BorderSide(color: Color(0xff03010D))),
                        ),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff03010D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ActionFilledButton(
                        text: 'Add calendar',
                        onPressed: () {
                          context.go('/saved');
                          final snackBar = SnackBar(
                            padding: EdgeInsets.only(top: 16, bottom: 23),
                            backgroundColor: Color(0xffF5F5F5),
                            closeIconColor: Color(0xff03010D),
                            duration: Duration(minutes: 1),
                            showCloseIcon: true,
                            content: const Text(
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
              SizedBox(height: 23),
            ],
          ),
        ],
      ),
    );
  }
}
