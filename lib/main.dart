import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/routes_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: ColorsData.whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: RoutesData.routes,
    );
  }
}
