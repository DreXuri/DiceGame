import 'dart:math';

import 'package:dicegame/utils/color_costants.dart';
import 'package:dicegame/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final rand = Random();

class DicePage extends StatefulWidget {
  static const String route = '/dice_page';

  const DicePage({super.key});

  @override
  State<DicePage> createState() {
    return _DicePageState();
  }
}

class _DicePageState extends State<DicePage> {
  bool isloading = false;
  var newDicImage = 'assets/images/dice-1.png';

  void rollDice() {
    var imgNext = rand.nextInt(6);

    setState(() {
      isloading = true;
      imgNext = imgNext + 1;
      newDicImage = 'assets/images/dice-$imgNext.png';
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget preview = Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: Center(
        child: Image.asset(
          newDicImage,
          width: 150.h,
          height: 150.h,
        ),
      ),
    );

    if (isloading) {
      preview = CircularProgressIndicator();
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appBarGradient,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              preview,
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
