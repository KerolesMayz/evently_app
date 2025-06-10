import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_text_field.dart';
import 'package:evently/core/widgets/have_account.dart';
import 'package:evently/core/widgets/language_switch.dart';
import 'package:evently/screens/authentication/login/widgets/forget_password_button.dart';
import 'package:evently/screens/authentication/login/widgets/google_login.dart';
import 'package:evently/screens/authentication/login/widgets/or_breaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Image.asset(AssetsManager.logo)),
            Expanded(
              flex: 4,
              child: Padding(
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      labelText: 'Email',
                      hintText: 'Email',
                      prefixIcon: const Icon(EvaIcons.email),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                      labelText: 'Password',
                      hintText: 'Password',
                      suffixIcon: const Icon(Icons.visibility_off_rounded),
                      prefixIcon: const Icon(Icons.lock_rounded),
                      onClick: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                      obscureText: secure,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ForgetPasswordButton(),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomButton(
                      onClick: () {},
                      text: 'Login',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    HaveAccount(
                      question: 'Don’t Have Account ? ',
                      action: 'Create Account',
                      onActionClick: () {},
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    const OrBreaker(),
                    SizedBox(
                      height: 24.h,
                    ),
                    const GoogleLogin(),
                    SizedBox(
                      height: 24.h,
                    ),
                    const Center(child: LanguageSwitch())
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
