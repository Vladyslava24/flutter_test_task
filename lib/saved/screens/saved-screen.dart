import 'package:flutter/material.dart';
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
                        Text(
                          'Fitboxing',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff03010D),
                          ),
                        ),
                        SizedBox(height: 19),
                        TrainingPlaceText(
                          trainingTime: '15.02 | 14:00 (55) хв',
                          address: 'Zhylianska St, 41А, Kyiv, 01033',
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
                        SizedBox(height: 24),
                        Text(
                          'Важлива інформація',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff03010D),
                          ),
                        ),
                        SizedBox(height: 30),
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
              SizedBox(height: 87),
            ],
          ),
        ],
      ),
    );
  }
}
