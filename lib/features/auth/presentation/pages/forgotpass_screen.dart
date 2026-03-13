import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class ForgotpassScreen extends StatefulWidget {
  const ForgotpassScreen({super.key});

  @override
  State<ForgotpassScreen> createState() => _ForgotpassScreenState();
}

class _ForgotpassScreenState extends State<ForgotpassScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context, title: 'Forgot Password'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  'Type your email to receive a link to reset your password.',
                  style: TextStyle(fontSize: 16, color: ColorsData.gray),
                ),
                SizedBox(height: 20),
                MainTextField(labelText: 'Email', controller: emailController),
                SizedBox(height: 20),
                Text(
                  'We texted you a code to verify your phone number',
                  style: TextStyle(fontSize: 16, color: ColorsData.dark),
                ),
                SizedBox(height: 40),
                MainButton(
                  text: 'Send Code',
                  ontap: () {
                    //! go to verify screen
                    pushTo(context, RoutesData.verifycode);
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
