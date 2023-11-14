// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      json['id'] as int?,
      json['email'] as String?,
      json['username'] as String?,
      json['phone_number'] as String?,
    );

Map<String, dynamic> _$UserDataResponseToJson(UserDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'phone_number': instance.phoneNumber,
    };

AuthenticationResponse _$AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResponse(
      json['data'] == null
          ? null
          : UserDataResponse.fromJson(json['data'] as Map<String, dynamic>),
      json['token'] as String?,
    )
      ..message = json['message'] as String?;

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'token': instance.token,
    };

LoginAuthenticationResponse _$LoginAuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    LoginAuthenticationResponse(
      json['id'] as int?,
      json['IDAuthorties'] as int?,
    )
      ..message = json['message'] as String?;



SendEmailResponse _$SendEmailResponseFromJson(Map<String, dynamic> json) =>
    SendEmailResponse(
      json['detail'] as String?,
    );

Map<String, dynamic> _$SendEmailResponseToJson(SendEmailResponse instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };
