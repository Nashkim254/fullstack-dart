import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User( {
    required this.id,
    required this.name,
    required this.msisdn,
    required this.nationalId,
    required this.type,
  });

  final String id;
  final String name;
  final String msisdn;
  final String nationalId;
  final UserType type;

  // ignore: sort_constructors_first
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [id, name, msisdn, nationalId, type];
}

enum UserType {
  admin,
  user;

  @override
  String toString() => name;
}
