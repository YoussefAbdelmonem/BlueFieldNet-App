import 'endpoints.dart';

import '../model/notifications_model.dart';
import '../../../../core/data_source/dio.dart';

class NotificationsRepository {
  final DioService dioService;
  NotificationsRepository(this.dioService);
}
