// import 'dart:async';

// import 'package:user_repository/src/models/models.dart';
// import 'package:uuid/uuid.dart';

// class UserRepository {
//   User? _user;

//   //This method should fetch a user from the backend
//   Future<User?> getUser() async {
//     if (_user != null) return _user;
//     return Future.delayed(
//       const Duration(milliseconds: 500),
//       () => _user = User(const Uuid().v4()),
//     );
//   }
// }
