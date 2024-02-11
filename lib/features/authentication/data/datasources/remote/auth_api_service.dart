import 'package:flutter_login/common/api/const_ck_api.dart';
import 'package:flutter_login/features/authentication/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'auth_api_service.g.dart';

@RestApi(baseUrl: CkApiConst.API_BASE_URL)
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST('/data/login')
  @Headers(
      <String, dynamic>{'Content-Type': 'application/x-www-form-urlencoded'})
  Future<HttpResponse<UserModel>> login(
      {@Body() required Map<String, dynamic> usernamePasswordMap});
}
