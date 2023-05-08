// Route? onGenerateRoutes(RouteSettings settings) {
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../features/dice_game.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DicePage.route:
      return PageTransition(
        child: const DicePage(),
        type: PageTransitionType.rightToLeft,
      );

    default:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
