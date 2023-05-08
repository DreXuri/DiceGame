import 'dart:math';

import 'package:dicegame/utils/color_costants.dart';
import 'package:dicegame/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app.assets.dart';

class DicePage extends StatefulWidget {
  static const String route = '/dice_page';

  const DicePage({super.key});

  @override
  State<DicePage> createState() {
    return _DicePageState();
  }
}

class _DicePageState extends State<DicePage> {
  // var newDicImage = Assets.imageDice4;
  var newDicImage = 'assets/images/dice-1.png';
  // var imgNext = 1;

  void rollDice() {
    var imgNext = Random().nextInt(6);
    setState(() {
      newDicImage = Assets.imageDice4;
      imgNext = imgNext + 1;
      newDicImage = 'assets/images/dice-$imgNext.png';
    });

    print('newImage');
    print('for the $imgNext');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appBarGradient,
        ),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                newDicImage,
                width: 150.h,
                height: 150.h,
              ),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton(
                  onPressed: rollDice,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimary,
                    disabledForegroundColor: kPrimary.withOpacity(0.56),
                    padding:
                        EdgeInsets.symmetric(vertical: 14.h, horizontal: 32.w),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                    ),
                  ),
                  child: CustomText(
                      color: kWhite,
                      data: 'Roll the dice',
                      textAlign: TextAlign.center))
            ],
          ),
        ),
      ),
    );
  }
}
