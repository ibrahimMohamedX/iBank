import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class VerifycodeScreen extends StatefulWidget {
  const VerifycodeScreen({super.key});

  @override
  State<VerifycodeScreen> createState() => _VerifycodeScreenState();
}

class _VerifycodeScreenState extends State<VerifycodeScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController codecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Center(
          child: InkWell(
            onTap: () {
              //! gobackto forgotpass screen
              pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Change your Email',
                style: TextStyle(
                  fontSize: 18,
                  color: ColorsData.prim1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: MainAppBar(context, title: 'Verify Code'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type your code',
                  style: TextStyle(fontSize: 16, color: ColorsData.gray),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        flex: 3,
                        child: MainTextField(
                          labelText: 'Code',
                          controller: codecontroller,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: MainButton(
                          text: 'Resend',
                          ontap: () {
                            //! resend code logic
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'We texted you a code to verify your Email address.',
                  style: TextStyle(fontSize: 16, color: ColorsData.gray),
                ),
                SizedBox(height: 20),
                Text(
                  'This code will expired 10 minutes after this message. If you don\'t get a message.',
                  style: TextStyle(fontSize: 16, color: ColorsData.gray),
                ),
                SizedBox(height: 20),
                MainButton(
                  text: 'Verify',
                  ontap: () {
                    //! verify code logic
                    //! go to reset password screen
                    pushTo(context, RoutesData.changepassword);
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
