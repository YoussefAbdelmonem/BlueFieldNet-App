import 'dart:io';

import 'package:bluefieldnet/modules/auth/presentation/forget_password/forget_password_screen.dart';
import 'package:bluefieldnet/modules/auth/presentation/join_as_freelancer/complete_register.dart';
import 'package:bluefieldnet/modules/auth/presentation/sign_up/sign_up_screen.dart';
import 'package:bluefieldnet/modules/layout/presentaions/layout/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../modules/auth/presentation/reset_password/reset_password_screen.dart';
import '../../modules/messages/presentation/messages_screen.dart';
import '../../modules/splash/presentation/splash.dart';
import '../../modules/auth/presentation/login/login_screen.dart';
import '../../modules/notifications/presentation/notifications.dart';
import '../../modules/jobs/presentation/jobs.dart';
import '../../modules/post_a_job/presentation/post_a_job.dart';

class Routes {
  static const String SplashScreen = "/";
  static const String AuthScreen = "/authScreen";
  static const String ForgetPassword = "/ForgetPasswordScreen";
  static const String SignUp = "/SignUpScreen";
  static const String ResetPassword = "/ResetPassword";
  static const String completeRegister = "/completeRegister";
  static const String layoutScreen = "/LayoutScreen";
  static const String messagesScreen = "/messagesScreen";
  static const String notificationsScreen = "/notificationsScreen";
  static const String jobsScreen = "/jobsScreen";
  static const String post_a_jobScreen = "/postAJobScreen";

/////////////////////////
  static const String JobTitleWidget = "/JobTitleWidget";
  static const String JobDescriptionWidget = "/JobDescriptionWidget";
  static const String JobDetailsWidget = "/JobDetailsWidget";
  static const String JobExpertiseWidget = "/JobExpertiseWidget";
  static const String JobVisibilityWidget = "/JobVisibilityWidget";
  static const String JobBudgetWidget = "/JobBudgetWidget";
  static const String JobReviewWidget = "/JobReviewWidget";
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
      case Routes.post_a_jobScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const PostAJobScreen();
            });
      case Routes.jobsScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const JobsScreen();
            });
      case Routes.notificationsScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const NotificationsScreen();
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
      case Routes.ResetPassword:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const ResetPasswordScreen();
            });
      case Routes.completeRegister:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return CompleteRegisterScreen();
            });
      case Routes.layoutScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return LayoutScreen();
            });
      case Routes.messagesScreen:
        return CupertinoPageRoute(
            settings: routeSettings,
            builder: (_) {
              return const MessagesScreen();
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
