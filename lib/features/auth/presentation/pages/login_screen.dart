import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/assets_data.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/authfootlink.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsData.prim1,
        title: const Text(
          'Sign in',
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
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorsData.prim1,
                      ),
                    ),
                    Text(
                      'Hello there, sign in to continue',
                      style: TextStyle(fontSize: 16, color: ColorsData.dark),
                    ),
                    SizedBox(height: 50),
                    Center(child: SvgPicture.asset(AssetsData.Slogin)),
                    SizedBox(height: 40),
                    Form(
                      child: Column(
                        children: [
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
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                //! go to forgot password screen
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: ColorsData.dark,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
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
                      desc: "Don't have an account?  ",
                      linkText: 'Sign Up',
                      ontap: () {
                        //! go to sign up screen
                        pushWithReplacement(context, RoutesData.signup);
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
