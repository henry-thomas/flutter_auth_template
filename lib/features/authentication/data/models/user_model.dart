import 'package:flutter_login/features/authentication/domain/entities/user.dart';

class UserModel extends User {
  const UserModel(
      {int? id,
      String? email,
      String? first_name,
      String? last_name,
      String? phone,
      int? supervisorId})
      : super(id, email, first_name, last_name, phone, supervisorId);

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? null,
      email: map['email'] ?? "",
      first_name: map['first_name'] ?? "",
      last_name: map['last_name'] ?? "",
      phone: map['phone'] ?? "",
      supervisorId: map['supervisorId'] ?? null,
    );
  }

  factory UserModel.fromEntity(UserModel entity) {
    return UserModel(
        id: entity.id,
        email: entity.email,
        first_name: entity.first_name,
        last_name: entity.last_name,
        phone: entity.phone,
        supervisorId: entity.supervisorId);
  }
}
