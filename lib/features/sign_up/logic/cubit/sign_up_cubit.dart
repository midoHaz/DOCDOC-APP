import 'package:advanced_sessions/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advanced_sessions/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advanced_sessions/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  void emitSignUpStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: usernameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      error: (message) {
        emit(SignUpState.error(error: message));
      },
    );
  }
}
