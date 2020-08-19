import 'package:firstmobxproject/controllers/homeController.dart';
import 'package:firstmobxproject/controllers/list_controller.dart';
import 'package:firstmobxproject/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<HomeController>(HomeController());
  getIt.registerSingleton<MyListController>(MyListController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
