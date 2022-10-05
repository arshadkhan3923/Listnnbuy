import 'package:flutter/material.dart';
import 'package:listnbuy_app/screens/by_filtered.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List N Buy ',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: FilteredCarPage (),
    );
  }
}


