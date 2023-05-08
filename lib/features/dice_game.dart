import 'package:dicegame/utils/color_costants.dart';
import 'package:dicegame/widgets/my_text.dart';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  static const String route = '/dice_page';

  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: CustomText(
      //     data: 'Dice Page',
      //     textAlign: null,
      //   ),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: appBarGradient,
        ),
        child: Center(
          child: CustomText(
            data: 'Dice infor',
            textAlign: null,
          ),
        ),
      ),
    );
  }
}
