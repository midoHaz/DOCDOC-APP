import 'package:advanced_sessions/core/helpers/extensions.dart';
import 'package:advanced_sessions/core/routing/routes.dart';
import 'package:advanced_sessions/core/theming/colors.dart';
import 'package:advanced_sessions/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ))
      ),
        onPressed: () {
        context.pushNamed(Routes.loginScreen);
        },
        child: Text(
          "Get Started",
          style: TextStyles.font16SemiBoldWhite,
        ));
  }
}
