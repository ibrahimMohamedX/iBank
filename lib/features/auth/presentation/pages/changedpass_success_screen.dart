import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/consts/assets_data.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class ChangedpassSuccessScreen extends StatelessWidget {
  const ChangedpassSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PasswordAppBar(context, title: 'Success'),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SvgPicture.asset(AssetsData.SchangedPass_success),
                SizedBox(height: 20),
                Text(
                  'Change password successfully!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsData.prim1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'You have successfully change password. Please use the new password when Sign in.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsData.dark,
                  ),
                ),
                SizedBox(height: 40),
                MainButton(
                  text: 'Back to Login',
                  ontap: () {
                    //! go back to login screen
                    pushAndRemoveUntil(context, RoutesData.login);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
