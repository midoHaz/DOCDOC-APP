import 'package:advanced_sessions/core/helpers/extensions.dart';
import 'package:advanced_sessions/core/routing/routes.dart';
import 'package:advanced_sessions/core/theming/colors.dart';
import 'package:advanced_sessions/core/theming/styles.dart';
import 'package:advanced_sessions/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_sessions/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is Loading || current is Success || current is Error;
      },
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: ColorManager.mainBlue,
                ));
              });
        }, success: (loginResponse) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        }, error: (String error) {
          setupErrorState(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red,size: 32,),
        content: Center(child: Text(error,style: TextStyles.font15MediumDarkBlue,)),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text("Got it", style: TextStyles.font14semiBoldBlue),
          ),
        ],
      );
    });
  }
}
