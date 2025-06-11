import 'package:evently/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: REdgeInsets.symmetric(vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AssetsManager.google,
                width: 26.r,
                height: 26.r,
              ),
              Padding(
                padding: REdgeInsets.only(left: 10),
                child: Text(
                  AppLocalizations.of(context)!.login_with_google,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
