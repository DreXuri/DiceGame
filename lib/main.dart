import 'package:dicegame/config/routes.dart';
import 'package:dicegame/features/dice_game.dart';
import 'package:dicegame/widgets/my_scroll_behaviour.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dice Game',
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
              .apply(fontSizeFactor: 1.sp),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: (context, widget) {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          widget = ScrollConfiguration(
            behavior: const MyScrollBehavior(),
            child: widget!,
          );
          return widget;
        },
        onGenerateRoute: (settings) => generateRoute(settings),
        initialRoute: DicePage.route,
      ),
    );
  }
}
