import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';

class AuthFooterLink extends StatelessWidget {
  const AuthFooterLink({
    super.key,
    required this.desc,
    required this.linkText,
    this.ontap,
  });

  final String desc;
  final String linkText;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: ontap,
        child: RichText(
          text: TextSpan(
            text: desc,
            style: TextStyle(color: ColorsData.dark, fontSize: 16),
            children: [
              TextSpan(
                text: linkText,
                style: TextStyle(
                  color: ColorsData.prim1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
