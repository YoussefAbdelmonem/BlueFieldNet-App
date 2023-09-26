import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static const String splashRoute = "/";
}

class RouteGenerator {
  static String currentRoute = "";

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    currentRoute = routeSettings.name.toString();
    switch (routeSettings.name) {
      case Routes.splashRoute:
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
