import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.id, this.email, this.first_name, this.last_name, this.phone,
      this.supervisorId);

  final int? id;
  final String? email;
  final String? first_name;
  final String? last_name;
  final String? phone;
  final int? supervisorId;

  @override
  List<Object?> get props =>
      [id, email, first_name, last_name, phone, supervisorId];

  static const empty = User(null, '', '', '', '', null);
}
