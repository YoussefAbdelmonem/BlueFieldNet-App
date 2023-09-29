import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/notifications_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class NotificationsCubit extends Cubit<NotificationsStates> {
  NotificationsCubit() : super(NotificationsInitial());
  static NotificationsCubit get(context) => BlocProvider.of(context);

  NotificationsRepository notificationsRepository =
      NotificationsRepository(locator<DioService>());
}
