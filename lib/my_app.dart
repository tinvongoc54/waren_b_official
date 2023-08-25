import 'package:get/get.dart';
import 'package:warenb/app_config.dart';
import 'package:flutter/material.dart';
import 'package:warenb/main_view.dart';
import 'package:warenb/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  final AppConfig appConfig;
  const MyApp({super.key, required this.appConfig});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainView(),
    );
  }
}
