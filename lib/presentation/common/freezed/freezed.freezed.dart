// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginObject {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginObjectCopyWith<LoginObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObjectCopyWith<$Res> {
  factory $LoginObjectCopyWith(
          LoginObject value, $Res Function(LoginObject) then) =
      _$LoginObjectCopyWithImpl<$Res, LoginObject>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginObjectCopyWithImpl<$Res, $Val extends LoginObject>
    implements $LoginObjectCopyWith<$Res> {
  _$LoginObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginObjectImplCopyWith<$Res>
    implements $LoginObjectCopyWith<$Res> {
  factory _$$LoginObjectImplCopyWith(
          _$LoginObjectImpl value, $Res Function(_$LoginObjectImpl) then) =
      __$$LoginObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginObjectImplCopyWithImpl<$Res>
    extends _$LoginObjectCopyWithImpl<$Res, _$LoginObjectImpl>
    implements _$$LoginObjectImplCopyWith<$Res> {
  __$$LoginObjectImplCopyWithImpl(
      _$LoginObjectImpl _value, $Res Function(_$LoginObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginObjectImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginObjectImpl with DiagnosticableTreeMixin implements _LoginObject {
  _$LoginObjectImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginObject(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginObject'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginObjectImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginObjectImplCopyWith<_$LoginObjectImpl> get copyWith =>
      __$$LoginObjectImplCopyWithImpl<_$LoginObjectImpl>(this, _$identity);
}

abstract class _LoginObject implements LoginObject {
  factory _LoginObject(final String email, final String password) =
      _$LoginObjectImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginObjectImplCopyWith<_$LoginObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordObject {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordObjectCopyWith<ForgotPasswordObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordObjectCopyWith<$Res> {
  factory $ForgotPasswordObjectCopyWith(ForgotPasswordObject value,
          $Res Function(ForgotPasswordObject) then) =
      _$ForgotPasswordObjectCopyWithImpl<$Res, ForgotPasswordObject>;
  @useResult
  $Res call({String email, String otp, String password});
}

/// @nodoc
class _$ForgotPasswordObjectCopyWithImpl<$Res,
        $Val extends ForgotPasswordObject>
    implements $ForgotPasswordObjectCopyWith<$Res> {
  _$ForgotPasswordObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordObjectImplCopyWith<$Res>
    implements $ForgotPasswordObjectCopyWith<$Res> {
  factory _$$ForgotPasswordObjectImplCopyWith(_$ForgotPasswordObjectImpl value,
          $Res Function(_$ForgotPasswordObjectImpl) then) =
      __$$ForgotPasswordObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otp, String password});
}

/// @nodoc
class __$$ForgotPasswordObjectImplCopyWithImpl<$Res>
    extends _$ForgotPasswordObjectCopyWithImpl<$Res, _$ForgotPasswordObjectImpl>
    implements _$$ForgotPasswordObjectImplCopyWith<$Res> {
  __$$ForgotPasswordObjectImplCopyWithImpl(_$ForgotPasswordObjectImpl _value,
      $Res Function(_$ForgotPasswordObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? password = null,
  }) {
    return _then(_$ForgotPasswordObjectImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordObjectImpl
    with DiagnosticableTreeMixin
    implements _ForgotPasswordObject {
  _$ForgotPasswordObjectImpl(this.email, this.otp, this.password);

  @override
  final String email;
  @override
  final String otp;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotPasswordObject(email: $email, otp: $otp, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForgotPasswordObject'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordObjectImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otp, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordObjectImplCopyWith<_$ForgotPasswordObjectImpl>
      get copyWith =>
          __$$ForgotPasswordObjectImplCopyWithImpl<_$ForgotPasswordObjectImpl>(
              this, _$identity);
}

abstract class _ForgotPasswordObject implements ForgotPasswordObject {
  factory _ForgotPasswordObject(
          final String email, final String otp, final String password) =
      _$ForgotPasswordObjectImpl;

  @override
  String get email;
  @override
  String get otp;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordObjectImplCopyWith<_$ForgotPasswordObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InsuranceRequest {
  int get requestNumber => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsuranceRequestCopyWith<InsuranceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceRequestCopyWith<$Res> {
  factory $InsuranceRequestCopyWith(
          InsuranceRequest value, $Res Function(InsuranceRequest) then) =
      _$InsuranceRequestCopyWithImpl<$Res, InsuranceRequest>;
  @useResult
  $Res call({int requestNumber, DateTime date});
}

/// @nodoc
class _$InsuranceRequestCopyWithImpl<$Res, $Val extends InsuranceRequest>
    implements $InsuranceRequestCopyWith<$Res> {
  _$InsuranceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestNumber = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      requestNumber: null == requestNumber
          ? _value.requestNumber
          : requestNumber // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuranceRequestImplCopyWith<$Res>
    implements $InsuranceRequestCopyWith<$Res> {
  factory _$$InsuranceRequestImplCopyWith(_$InsuranceRequestImpl value,
          $Res Function(_$InsuranceRequestImpl) then) =
      __$$InsuranceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestNumber, DateTime date});
}

/// @nodoc
class __$$InsuranceRequestImplCopyWithImpl<$Res>
    extends _$InsuranceRequestCopyWithImpl<$Res, _$InsuranceRequestImpl>
    implements _$$InsuranceRequestImplCopyWith<$Res> {
  __$$InsuranceRequestImplCopyWithImpl(_$InsuranceRequestImpl _value,
      $Res Function(_$InsuranceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestNumber = null,
    Object? date = null,
  }) {
    return _then(_$InsuranceRequestImpl(
      requestNumber: null == requestNumber
          ? _value.requestNumber
          : requestNumber // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$InsuranceRequestImpl
    with DiagnosticableTreeMixin
    implements _InsuranceRequest {
  _$InsuranceRequestImpl({required this.requestNumber, required this.date});

  @override
  final int requestNumber;
  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InsuranceRequest(requestNumber: $requestNumber, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InsuranceRequest'))
      ..add(DiagnosticsProperty('requestNumber', requestNumber))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceRequestImpl &&
            (identical(other.requestNumber, requestNumber) ||
                other.requestNumber == requestNumber) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestNumber, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceRequestImplCopyWith<_$InsuranceRequestImpl> get copyWith =>
      __$$InsuranceRequestImplCopyWithImpl<_$InsuranceRequestImpl>(
          this, _$identity);
}

abstract class _InsuranceRequest implements InsuranceRequest {
  factory _InsuranceRequest(
      {required final int requestNumber,
      required final DateTime date}) = _$InsuranceRequestImpl;

  @override
  int get requestNumber;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$InsuranceRequestImplCopyWith<_$InsuranceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Committee {
  int get committeeNumber => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommitteeCopyWith<Committee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitteeCopyWith<$Res> {
  factory $CommitteeCopyWith(Committee value, $Res Function(Committee) then) =
      _$CommitteeCopyWithImpl<$Res, Committee>;
  @useResult
  $Res call({int committeeNumber, DateTime date});
}

/// @nodoc
class _$CommitteeCopyWithImpl<$Res, $Val extends Committee>
    implements $CommitteeCopyWith<$Res> {
  _$CommitteeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? committeeNumber = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      committeeNumber: null == committeeNumber
          ? _value.committeeNumber
          : committeeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommitteeImplCopyWith<$Res>
    implements $CommitteeCopyWith<$Res> {
  factory _$$CommitteeImplCopyWith(
          _$CommitteeImpl value, $Res Function(_$CommitteeImpl) then) =
      __$$CommitteeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int committeeNumber, DateTime date});
}

/// @nodoc
class __$$CommitteeImplCopyWithImpl<$Res>
    extends _$CommitteeCopyWithImpl<$Res, _$CommitteeImpl>
    implements _$$CommitteeImplCopyWith<$Res> {
  __$$CommitteeImplCopyWithImpl(
      _$CommitteeImpl _value, $Res Function(_$CommitteeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? committeeNumber = null,
    Object? date = null,
  }) {
    return _then(_$CommitteeImpl(
      committeeNumber: null == committeeNumber
          ? _value.committeeNumber
          : committeeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CommitteeImpl with DiagnosticableTreeMixin implements _Committee {
  _$CommitteeImpl({required this.committeeNumber, required this.date});

  @override
  final int committeeNumber;
  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Committee(committeeNumber: $committeeNumber, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Committee'))
      ..add(DiagnosticsProperty('committeeNumber', committeeNumber))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitteeImpl &&
            (identical(other.committeeNumber, committeeNumber) ||
                other.committeeNumber == committeeNumber) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, committeeNumber, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitteeImplCopyWith<_$CommitteeImpl> get copyWith =>
      __$$CommitteeImplCopyWithImpl<_$CommitteeImpl>(this, _$identity);
}

abstract class _Committee implements Committee {
  factory _Committee(
      {required final int committeeNumber,
      required final DateTime date}) = _$CommitteeImpl;

  @override
  int get committeeNumber;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$CommitteeImplCopyWith<_$CommitteeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
