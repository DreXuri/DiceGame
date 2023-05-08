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
  var newDic1 = 'assets/images/dice-1.png';
  var newDic2 = 'assets/images/dice-6.png';

  void rollDice() async {
    var imgNext = rand.nextInt(6) + 1;
    var imgPrev = rand.nextInt(6) + 1;
    setState(() {
      isloading = true;
      newDic1 = 'assets/images/dice-$imgNext.png';
      newDic2 = 'assets/images/dice-$imgPrev.png';
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget dice1 = Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: Center(
        child: Image.asset(
          newDic1,
          width: 150.h,
          height: 150.h,
        ),
      ),
    );
    Widget dice2 = Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: Center(
        child: Image.asset(
          newDic2,
          width: 150.h,
          height: 150.h,
        ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appBarGradient,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              isloading
                  ? CircularProgressIndicator()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [dice1, dice2],
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
