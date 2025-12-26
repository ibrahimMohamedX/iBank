import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/assets_data.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/authfootlink.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsData.prim1,
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: ColorsData.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(color: ColorsData.prim1),
            ),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: ColorsData.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to us',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorsData.prim1,
                      ),
                    ),
                    Text(
                      'Hello there, create New account',
                      style: TextStyle(fontSize: 16, color: ColorsData.dark),
                    ),
                    SizedBox(height: 50),
                    Center(child: SvgPicture.asset(AssetsData.Ssignup)),
                    SizedBox(height: 40),
                    Form(
                      child: Column(
                        children: [
                          // Name field
                          MainTextField(
                            labelText: 'Name',
                            controller: nameController,
                          ),
                          SizedBox(height: 20),
                          // email field
                          MainTextField(
                            labelText: 'Email',
                            controller: emailController,
                          ),
                          SizedBox(height: 20),
                          // password field
                          MainTextField(
                            labelText: 'Password',
                            controller: passwordController,
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: ((value) {
                                  //! toggle checkbox
                                  isChecked = !isChecked;
                                  print(isChecked);
                                  setState(() {});
                                }),
                              ),
                              Expanded(
                                child: Text(
                                  'By creating an account your agree to our Terms and Conditions',
                                  style: TextStyle(
                                    color: ColorsData.dark,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // main button
                          MainButton(
                            text: 'Sign In',
                            ontap: () {
                              //! go to home screen
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    AuthFooterLink(
                      desc: "Have an account?  ",
                      linkText: 'Sign In',
                      ontap: () {
                        //! go to sign up screen
                        pushWithReplacement(context, RoutesData.login);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
