// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      name: json['name'] as String,
      msisdn: json['msisdn'] as String,
      nationalId: json['nationalId'] as String,
      type: $enumDecode(_$UserTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'msisdn': instance.msisdn,
      'nationalId': instance.nationalId,
      'type': _$UserTypeEnumMap[instance.type]!,
    };

const _$UserTypeEnumMap = {
  UserType.admin: 'admin',
  UserType.user: 'user',
};
