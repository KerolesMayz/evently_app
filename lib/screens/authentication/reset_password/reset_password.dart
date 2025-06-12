import 'package:evently/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/resources/assets_manager.dart';
import '../../../core/widgets/custom_text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.reset_password),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 24.r,
            )),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AssetsManager.resetPassword),
            SizedBox(
              height: 24.h,
            ),
            CustomTextField(
              labelText: AppLocalizations.of(context)!.email,
              hintText: AppLocalizations.of(context)!.email,
              prefixIcon: const Icon(EvaIcons.email),
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(
              text: AppLocalizations.of(context)!.reset_password,
              onClick: () {},
            )
          ],
        ),
      ),
    );
  }
}
