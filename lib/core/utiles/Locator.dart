import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../modules/auth/domain/repository/repository.dart';
import '../../modules/splash/domain/repository/repository.dart';
import '../data_source/PrefService.dart';
import '../data_source/dio.dart';
import '../data_source/local_hive.dart';
import '../helpers/media.dart';
import '../../modules/messages/domain/repository/repository.dart';
import '../../modules/notifications/domain/repository/repository.dart';
import '../../modules/jobs/domain/repository/repository.dart';
import '../../modules/post_a_job/domain/repository/repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  var prefInstance = await PrefService.getInstance();
  locator.registerSingleton<PrefService>(prefInstance);
  locator.registerLazySingleton(() => DataManager());
  locator.registerLazySingleton(() => DioService());
  locator.registerLazySingleton(() => Validation());
  locator.registerLazySingleton(() => MyMedia());
  locator.registerLazySingleton(() => GlobalKey<ScaffoldState>());
  locator.registerLazySingleton(() => GlobalKey<NavigatorState>());
  locator.registerLazySingleton(() => SplashRepository(locator<DioService>()));
  locator.registerLazySingleton(() => AuthRepository(locator<DioService>()));
  locator.registerLazySingleton(() => JobsRepository(locator<DioService>()));
  locator
      .registerLazySingleton(() => PostAJobRepository(locator<DioService>()));

  locator
      .registerLazySingleton(() => MessagesRepository(locator<DioService>()));
  locator.registerLazySingleton(
      () => NotificationsRepository(locator<DioService>()));
}
