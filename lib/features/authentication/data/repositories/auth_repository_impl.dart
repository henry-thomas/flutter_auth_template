import 'dart:async';

import 'package:flutter_login/features/authentication/data/datasources/remote/auth_api_service.dart';
import 'package:flutter_login/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_login/features/authentication/domain/repositories/user_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final AuthApiService _authApiService;

  AuthRepositoryImpl(this._authApiService);


  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> usernamePasswordMap = Map();
    usernamePasswordMap['email'] = email;
    usernamePasswordMap['password'] = password;
    var login =
        await _authApiService.login(usernamePasswordMap: usernamePasswordMap);

    await Future.delayed(
      const Duration(milliseconds: 300),
      () => {_controller.add(AuthenticationStatus.authenticated)},
    );
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
