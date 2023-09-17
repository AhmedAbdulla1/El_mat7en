


import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed.freezed.dart';



@freezed
class LoginObject with _$LoginObject{
  factory LoginObject(
      String email,
      String password,
      )=_LoginObject;
}
@freezed
class ForgotPasswordObject with _$ForgotPasswordObject{
  factory ForgotPasswordObject(
      String email,
      String otp,
      String password,
      )=_ForgotPasswordObject;
}

