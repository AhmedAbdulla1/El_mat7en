import 'package:flutter/foundation.dart';

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

@freezed
class InsuranceRequest with _$InsuranceRequest {
  factory InsuranceRequest({
  required final int requestNumber,
  required final DateTime date,
  }) = _InsuranceRequest;
}


@freezed
class Committee with _$Committee {
  factory Committee({
    required final int committeeNumber,
    required final DateTime date,
  }) = _Committee;
}
