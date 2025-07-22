import 'package:advanced_sessions/core/helpers/spacing.dart';
import 'package:advanced_sessions/core/theming/colors.dart';
import 'package:advanced_sessions/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least one uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidationRow("At least one lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least one number", hasNumber),
        verticalSpace(2),
        buildValidationRow(
            "At least one special character", hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow("At least 8 characters", hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool isValidated) {
  return Row(
    children: [
      const CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorManager.gray,
      ),
      horizontalSpace(6),
      Text(text,
          style: TextStyles.font13regularDarkBlue.copyWith(
            decoration:
                isValidated ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: isValidated ? ColorManager.gray : ColorManager.darkBlue,
          )),
    ],
  );
}
