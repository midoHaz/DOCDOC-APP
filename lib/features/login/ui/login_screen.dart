import 'package:advanced_sessions/core/helpers/spacing.dart';
import 'package:advanced_sessions/core/theming/styles.dart';
import 'package:advanced_sessions/core/widgets/app_text_button.dart';
import 'package:advanced_sessions/core/widgets/app_text_form_field.dart';
import 'package:advanced_sessions/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:advanced_sessions/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BoldBlue,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14regularGray,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(children: [
                      const AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObsecure: isObsecure,
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            isObsecure = !isObsecure;
                          }),
                          child: Icon(isObsecure
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('Forgot password?',
                              style: TextStyles.font13regularBlue)),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16SemiBoldWhite,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const DontHaveAccountText(),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
