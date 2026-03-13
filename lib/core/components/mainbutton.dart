import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    this.ontap,
    this.bgcolor,
    this.txtcolor,
    this.width,
  });

  final String text;
  final VoidCallback? ontap;
  final Color? bgcolor;
  final Color? txtcolor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width != null
            ? (MediaQuery.of(context).size.width * width!)
            : double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: bgcolor ?? ColorsData.prim1,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: txtcolor ?? ColorsData.whiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
