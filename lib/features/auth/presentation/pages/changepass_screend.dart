import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class ChangepassScreend extends StatefulWidget {
  const ChangepassScreend({super.key});

  @override
  State<ChangepassScreend> createState() => _ChangepassScreendState();
}

class _ChangepassScreendState extends State<ChangepassScreend> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PasswordAppBar(context, title: 'Change Password'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type your new password',
                  style: TextStyle(fontSize: 16, color: ColorsData.gray),
                ),
                SizedBox(height: 20),
                MainTextField(
                  labelText: 'New password',
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Text(
                  'Confirm password',
                  style: TextStyle(fontSize: 16, color: ColorsData.gray),
                ),
                SizedBox(height: 20),
                MainTextField(
                  labelText: 'Confirm password',
                  controller: confirmPasswordController,
                  obscureText: true,
                ),
                SizedBox(height: 80),
                MainButton(
                  text: 'Change Password',
                  ontap: () {
                    //! change password logic
                    //! go to changed password success screen
                    pushTo(context, RoutesData.changedpasssuccess);
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
