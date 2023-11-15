import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';

import '../../common/freezed/freezed.dart';


class LoginViewModel extends LoginViewModelOutput {
  final StreamController _emailController =
      StreamController<String>.broadcast();
  final StreamController _passwordController =
      StreamController<String>.broadcast();
  final StreamController _visibilityController =
      StreamController<bool>.broadcast();
  final StreamController _areInputValidController =
      StreamController<void>.broadcast();
  final StreamController<bool> isUserLoginSuccessfullyStreamController =
      StreamController.broadcast();
  LoginObject _loginObject = LoginObject('', '');

  LoginViewModel();

  bool visible = false;

  @override
  void start() {
  }

  @override
  Sink get inputAreAllInputValid => _areInputValidController.sink;

  @override
  Sink get inputEmailValid => _emailController.sink;

  @override
  Sink get inputPassword => _passwordController.sink;

  @override
  Sink get inputPasswordVisible => _visibilityController.sink;

  @override
  Stream<bool> get outAreAllInputValid =>
      _areInputValidController.stream.map((_) => _areInputValid());

  @override
  Stream<String?> get outEmailIsValid =>
      _emailController.stream.map((email) => _emailOutError(email));

  @override
  Stream<String?> get outPasswordIsValid =>
      _passwordController.stream.map((password) => _passwordOutError(password));

  @override
  Stream<bool> get outPasswordIsVisible =>
      _visibilityController.stream.map((visible) => visible);

  @override
  login() async {
    // Map<String, dynamic> query = {
    //   "Email":"ali@yahoo.com",
    //   "Password": "456",
    // };
    // try {
    //   http
    //       .get(
    //     Uri.parse("${Constant.baseurl}People/GetPeopleByEmail_and_Password",)
    //         .replace(queryParameters: query),
    //   )
    //       .then((response) {
    //     print("Reponse status : ${response.statusCode}");
    //     print("Response body : ${response.body}");
    //     var myresponse = jsonDecode(response.body);
    //     String token = myresponse["token"];
    //   });
    // } catch (e) {
    //   print(e.toString());
    // }

  }

  @override
  setEmail(String email) {
    _emailController.add(email);
    if (email.isNotEmpty) {
      _loginObject = _loginObject.copyWith(
        email: email,
      );
    } else {
      _loginObject = _loginObject.copyWith(
        email: "",
      );
    }
    _areInputValidController.add(null);
  }

  @override
  setPassword(String password) {
    _passwordController.add(password);
    if (password.isNotEmpty) {
      _loginObject = _loginObject.copyWith(
        password: password,
      );
    } else {
      _loginObject = _loginObject.copyWith(
        password: "",
      );
    }
    _areInputValidController.add(null);
  }

  @override
  setVisibility(bool visible) {
    _visibilityController.add(visible);
  }

  String? _emailOutError(String email) {
    if (email.isEmpty) {
      return AppStrings.emailError;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      return AppStrings.emailError2;
    }
    return null;
  }

  bool _emailIsValid(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  String? _passwordOutError(String password) {
    if (password.isEmpty) {
      return AppStrings.passwordError1;
    }
    return null;
  }

  bool _areInputValid() {
    return _emailIsValid(_loginObject.email) &&
        _loginObject.password.isNotEmpty;
  }
}

abstract class LoginViewModelInput  {
  setEmail(String email);

  setPassword(String password);

  setVisibility(bool visible);

  login();

  Sink get inputEmailValid;

  Sink get inputPassword;

  Sink get inputPasswordVisible;

  Sink get inputAreAllInputValid;
}

abstract class LoginViewModelOutput extends LoginViewModelInput {
  Stream<String?> get outEmailIsValid;

  Stream<String?> get outPasswordIsValid;

  Stream<bool> get outPasswordIsVisible;

  Stream<bool> get outAreAllInputValid;
}
