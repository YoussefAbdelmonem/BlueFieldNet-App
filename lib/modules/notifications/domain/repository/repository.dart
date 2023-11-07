import 'endpoints.dart';

import '../model/notifications_model.dart';
import '../../../../core/data_source/dio.dart';

class NotificationsRepository {
  final DioService dioService;
  NotificationsRepository(this.dioService);

  getNotifications() async {
    final response =
        await dioService.getData(url: NotificationsEndPoints.getNotifications);
    if (response.isError == false) {
      final notifications =
          NotificationsModel.fromJson(response.response?.data);
      return notifications;
    }
    return null;
  }
}
