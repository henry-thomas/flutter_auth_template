// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter_login/features/authentication/domain/entities/user.dart';
import 'package:uuid/uuid.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

abstract class AuthRepository {
  Stream<AuthenticationStatus> get status;

  Future<User?> logIn({
    required String email,
    required String password,
  });

  void logOut();

  void dispose();
}
