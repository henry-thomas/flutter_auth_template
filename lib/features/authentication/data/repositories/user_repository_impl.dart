import 'dart:async';
import 'dart:io';

import 'package:flutter_login/features/authentication/data/datasources/remote/auth_api_service.dart';
import 'package:flutter_login/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:flutter_login/features/authentication/domain/entities/user.dart';
import 'package:flutter_login/features/authentication/domain/repositories/user_repository.dart';
import 'package:uuid/uuid.dart';

class UserRepositoryImpl implements UserRepository {
  User? _user;

  //This method should fetch a user from the backend
  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => _user = AuthRepositoryImpl.user,
    );
  }
}
