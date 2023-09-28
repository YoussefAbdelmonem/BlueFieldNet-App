import 'dart:io';

import 'package:bluefieldnet/modules/auth/presentation/forget_password/forget_password_screen.dart';
import 'package:bluefieldnet/modules/auth/presentation/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../modules/splash/presentation/splash.dart';
import '../../modules/auth/presentation/login/login_screen.dart';

class Routes {
  static const String SplashScreen = "/";
  static const String AuthScreen = "/authScreen";
  static const String ForgetPassword = "/ForgetPasswordScreen";
  static const String SignUp = "/SignUpScreen";
}

class RouteGenerator {
  static String currentRoute = "";

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    currentRoute = routeSettings.name.toString();
    switch (routeSettings.name) {
      case Routes.SplashScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const SplashScreen();
            });
      case Routes.AuthScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const AuthScreen();
            });
      case Routes.ForgetPassword:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ForgetPasswordScreen();
            });
      case Routes.SignUp:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const SignUpScreen();
            });
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return CupertinoPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("مسار غير موجود"),
              ),
              body: const Center(child: Text("مسار غير موجود")),
            ));
  }
}

class PostsArgs {
  final String title;
  final String? categoryKey;
  PostsArgs({required this.title, this.categoryKey});
}

class ShowingImagesArgs {
  final String title;
  final List<File> images;
  ShowingImagesArgs({required this.title, required this.images});
}

class OtpArguments {
  final String sendTo;
  final dynamic Function(String) onSubmit;
  final void Function() onReSend;

  OtpArguments({
    required this.sendTo,
    required this.onSubmit,
    required this.onReSend,
  });
}
