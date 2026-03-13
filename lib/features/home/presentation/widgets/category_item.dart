import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibank/core/consts/colors_data.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    this.ontap,
  });

  final String icon;
  final String title;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 100,
        height: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorsData.prim4,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, width: 30, height: 30),
              SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
