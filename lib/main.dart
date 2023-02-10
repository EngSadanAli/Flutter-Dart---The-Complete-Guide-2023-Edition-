import 'package:flutter/material.dart';
import 'package:flutter_and_dart_the_complete_guide/quiz_app.dart';

import 'package:flutter_screenutil/screenutil_init.dart';

import 'anonymous_function.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      allowFontScaling: false,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const QuizApp(),
      ),
    );
  }
}
