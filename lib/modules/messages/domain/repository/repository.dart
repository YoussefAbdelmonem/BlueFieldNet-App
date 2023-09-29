import 'endpoints.dart';

import '../model/messages_model.dart';
import '../../../../core/data_source/dio.dart';

class MessagesRepository {
  final DioService dioService;
  MessagesRepository(this.dioService);
}
