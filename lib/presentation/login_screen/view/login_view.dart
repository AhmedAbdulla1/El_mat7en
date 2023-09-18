
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta_app/app/app_prefs.dart';
import 'package:tanta_app/app/di.dart';
import 'package:tanta_app/presentation/common/reusable/custom_button.dart';
import 'package:tanta_app/presentation/common/reusable/custom_scaffold.dart';
import 'package:tanta_app/presentation/common/reusable/custom_text_form_field.dart';
import 'package:tanta_app/presentation/common/state_render/state_renderer_imp.dart';
import 'package:tanta_app/presentation/login_screen/view_model/login_view_model.dart';
import 'package:tanta_app/presentation/resources/color_manager.dart';
import 'package:tanta_app/presentation/resources/font_manager.dart';
import 'package:tanta_app/presentation/resources/routes_manager.dart';
import 'package:tanta_app/presentation/resources/string_manager.dart';
import 'package:tanta_app/presentation/resources/values_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  final LoginViewModel _loginViewModel = instance<LoginViewModel>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _globalKey = GlobalKey<FormState>();

  List<String> emails= [
    'ahmed@gmail.com',
    'admin@gmail.com',
    'veterinary@gmail.com',
  ];

  bool visible = true;

  void _bind() {
    _loginViewModel.start();
    _emailController.addListener(
      () => _loginViewModel.setEmail(
        _emailController.text,
      ),
    );
    _passwordController.addListener(
      () => _loginViewModel.setPassword(
        _passwordController.text,
      ),
    );
    _loginViewModel.isUserLoginSuccessfullyStreamController.stream
        .listen((isLoading) {
      if (isLoading) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          _appPreferences.setPressKeyLoginScreen();
          debugPrint(_appPreferences.getToken());
          Navigator.pushReplacementNamed(context, Routes.mainScreen);
        });
      }
    });
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: StreamBuilder<StateFlow>(
        stream: _loginViewModel.outputState,
        builder: (context, snapshot) =>
            snapshot.data?.getScreenWidget(
              context,
              _getContent(),
              () {
                _loginViewModel.inputState.add(ContentState());
              },
            ) ??
            _getContent(),
      ),
    );
  }
  Widget _getContent() {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p16.w),
        child: Form(
          key: _globalKey,
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTextFormField(
                stream: _loginViewModel.outEmailIsValid,
                textEditingController: _emailController,
                hintText: AppStrings.email,
              ),
              const SizedBox(height: AppSize.s14),
              customPasswordFormField(
                stream1: _loginViewModel.outPasswordIsValid,
                stream2: _loginViewModel.outPasswordIsVisible,
                textEditingController: _passwordController,
                onPressed: () {
                  visible = !visible;
                  _loginViewModel.setVisibility(visible);
                },
              ),
              const SizedBox(height: AppSize.s14),
              //forgot password
              textButton(
                context: context,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.recoverPasswordScreen);
                },
                text: AppStrings.forgotPassword,
              ),
              const SizedBox(height: AppSize.s14),
              customElevatedButton(
                stream: _loginViewModel.outAreAllInputValid,
                onPressed: () {
                  print(_emailController.text);
                  if(_emailController.text== emails[1]){
                    Navigator.pushReplacementNamed(context, Routes.adminScreen);
                  }
                  else if(_emailController.text== emails[2]){
                    Navigator.pushReplacementNamed(context, Routes.veterinaryScreen);
                  }else
                   { Navigator.pushReplacementNamed(context, Routes.farmerScreen);}
                  _loginViewModel.login();
                },
                text: AppStrings.login,
              ),
            ],
          ),
        ),
      ),
    );

  }

// final GoogleSignIn  _googleSignIn = GoogleSignIn();
// Future<void> signInWithGoogle() async {
//   try {
//     GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//
//     if (googleSignInAccount != null) {
//       // Sign-in successful, now you can use the GoogleSignInAccount object
//       // to get user details like name, email, photo URL, etc.
//       String displayName = googleSignInAccount.displayName ?? "";
//       String email = googleSignInAccount.email ?? "";
//       String photoUrl = googleSignInAccount.photoUrl ?? "";
//       // String idToken = await googleSignInAccount.idToken ?? "";
//
//       // You can use these details to authenticate the user in your app and
//       // perform other actions as needed.
//     }
//   } catch (error) {
//     // Handle sign-in error
//     print("Error signing in with Google: $error");
//   }
// }
}
