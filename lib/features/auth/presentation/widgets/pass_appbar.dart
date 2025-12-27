import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';

AppBar PasswordAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    titleSpacing: canpop(context) ? 0 : 20,
    leading: canpop(context)
        ? IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: ColorsData.blackColor),
            onPressed: () {
              pop(context);
            },
          )
        : null,
    title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
  );
}
