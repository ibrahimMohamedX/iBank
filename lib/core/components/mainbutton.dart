import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text, this.ontap});

  final String text;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: ColorsData.prim1,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: ColorsData.whiteColor,

              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
