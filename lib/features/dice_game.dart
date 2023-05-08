import 'package:dicegame/utils/color_costants.dart';
import 'package:dicegame/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app.assets.dart';

class DicePage extends StatelessWidget {
  static const String route = '/dice_page';

  const DicePage({super.key});
  void rollDice() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appBarGradient,
        ),
        // child: Center(
        //   child: CustomText(
        //     fontSize: 20.sp,
        //     fontWeight: FontWeight.bold,
        //     color: kWhite,
        //     data: 'Dice infor',
        //     textAlign: null,
        //   ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                child: Image.asset(
              Assets.imageDice1,
              width: 150.h,
              height: 150.h,
            )),
            ElevatedButton(
                onPressed: () {},
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
    );
  }
}
