import 'package:advanced_sessions/core/networking/api_result.dart';
import 'package:advanced_sessions/core/networking/api_service.dart';
import 'package:advanced_sessions/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advanced_sessions/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signUp(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.register(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e.toString());
    }
  }
}