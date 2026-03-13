import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/consts/assets_data.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class TransferCongratsScreen extends StatelessWidget {
  const TransferCongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        context,
        title: 'Confrim',
        ontap: () => pushAndRemoveUntil(context, RoutesData.home),
      ),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SvgPicture.asset(AssetsData.Stransfer_success),
                SizedBox(height: 50),
                Text(
                  'Transfer successfully!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorsData.prim1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'You have successfully transferred \$1,000 to Amanda!.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsData.dark,
                  ),
                ),
                SizedBox(height: 40),
                MainButton(
                  text: 'Confirm',
                  ontap: () {
                    //! go back to home screen
                    pushAndRemoveUntil(context, RoutesData.home);
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
