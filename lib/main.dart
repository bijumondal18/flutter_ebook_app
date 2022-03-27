import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ebook_app/bottom_navigation_bar.dart';
import 'package:flutter_ebook_app/common/common.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparent, // status bar color
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Ebook App',
        theme: AppTheme.lightTheme,
        home: const BottomNavigation());
  }
}
