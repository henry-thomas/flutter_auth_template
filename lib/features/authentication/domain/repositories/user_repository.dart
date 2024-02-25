// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter_login/features/authentication/domain/entities/user.dart';
import 'package:uuid/uuid.dart';

abstract class UserRepository {
  Future<User?> getUser();
}
