import 'package:flutter/material.dart';
import 'package:ibank/core/consts/assets_data.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsData.Pviza_card),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Smith',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 35),
            Text(
              'Visa Classic',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Text(
                '5254 **** **** 7690',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  letterSpacing: 5,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              '\$3,763.87',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
