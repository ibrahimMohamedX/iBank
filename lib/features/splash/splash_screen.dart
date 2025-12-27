import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/consts/assets_data.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.prim1,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AssetsData.Llogo_animation,
              width: MediaQuery.of(context).size.width,
              repeat: false,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 80),
            Column(
              children: [
                FadeInUp(
                  from: 20,
                  delay: Duration(seconds: 3),
                  duration: Duration(milliseconds: 500),
                  child: SizedBox(
                    width: 335,
                    child: MainButton(
                      txtcolor: ColorsData.blackColor,
                      bgcolor: ColorsData.prim4,
                      text: 'Let\'s get strarted',
                      ontap: () {
                        //! navigate to onboarding screen
                        pushTo(context, RoutesData.signup);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FadeInUp(
                  from: 20,
                  delay: Duration(milliseconds: 3200),
                  duration: Duration(milliseconds: 500),
                  child: InkWell(
                    onTap: () {
                      //! navigate to login screen
                      pushTo(context, RoutesData.login);
                    },
                    child: Text(
                      'I already have an account',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: ColorsData.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
