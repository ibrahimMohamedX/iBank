import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';

class ConstsData {
  // padding
  static const pagepadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalpadding = EdgeInsets.symmetric(vertical: 10);
  static const padd_marg_small = EdgeInsets.all(8);
  static const padd_marg = EdgeInsets.all(15);
  static const padd_button = EdgeInsets.symmetric(horizontal: 15, vertical: 5);
  static const padd_small_button = EdgeInsets.all(10);

  // border
  static final border_prim = Border.all(width: 2, color: ColorsData.prim1);
  static final border_prim_bold = Border.all(width: 3, color: ColorsData.prim1);
  static final border_green = Border.all(width: 1, color: ColorsData.green);
  static final border_green_bold = Border.all(
    width: 2,
    color: ColorsData.green,
  );

  static final border_accent = Border.all(width: 1, color: ColorsData.accent);
  static final border_accent_bold = Border.all(
    width: 2,
    color: ColorsData.accent,
  );
  static final border_red = Border.all(width: 2, color: ColorsData.red);
  // border raduis
  static final raduis_small = BorderRadius.circular(8);
  static final raduis_medium = BorderRadius.circular(15);
  static final raduis_big = BorderRadius.circular(30);

  // duration
  static final Duration duration = Duration(milliseconds: 250);

  // delay
  static final int fadeinDelay = 250;

  // boxshadow
  static const boxshadow = [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0, 5),
    ),
  ];

  static const redshadow = [
    BoxShadow(
      color: Color.fromARGB(100, 255, 58, 110),
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0, 0),
    ),
  ];
  static const secondshadow = [
    BoxShadow(
      color: ColorsData.prim2,
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0, 0),
    ),
  ];

  // gradient
  static const gradient_prim = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xff0B1739), Color(0xff1F409F)],
    stops: [0.0, 0.4],
  );
  static const appbar_gradiant = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xff242F5A), Color(0xff2D4192)],
    stops: [0.2, 0.6],
  );
}
