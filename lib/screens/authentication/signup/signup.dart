import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_text_field.dart';
import 'package:evently/core/widgets/have_account.dart';
import 'package:evently/core/widgets/language_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _secure = true;

  void _onVisibilityClick() {
    setState(() {
      _secure = !_secure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 24.r,
            )),
      ),
      body: Column(
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
                    textInputType: TextInputType.name,
                    labelText: 'Name',
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person_rounded),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const CustomTextField(
                    textInputType: TextInputType.emailAddress,
                    labelText: 'Email',
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_rounded),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    textInputType: TextInputType.visiblePassword,
                    labelText: 'Password',
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock_rounded),
                    suffixIcon: _secure
                        ? const Icon(Icons.visibility_rounded)
                        : const Icon(Icons.visibility_off_rounded),
                    obscureText: _secure,
                    onClick: _onVisibilityClick,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    textInputType: TextInputType.visiblePassword,
                    labelText: 'Re Password',
                    hintText: 'Re Password',
                    prefixIcon: const Icon(Icons.lock_rounded),
                    suffixIcon: _secure
                        ? const Icon(Icons.visibility_rounded)
                        : const Icon(Icons.visibility_off_rounded),
                    obscureText: _secure,
                    onClick: _onVisibilityClick,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    text: 'Create Account',
                    onClick: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  HaveAccount(
                    question: 'Already Have Account ?',
                    action: 'Login',
                    onActionClick: () {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Center(child: LanguageSwitch()),
                ],
              ),
            ),
          )
        ],
      ),
      // body: ,
    );
  }
}
