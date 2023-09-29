import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/messages_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class MessagesCubit extends Cubit<MessagesStates> {
  MessagesCubit() : super(MessagesInitial());
  static MessagesCubit get(context) => BlocProvider.of(context);

  MessagesRepository messagesRepository =
      MessagesRepository(locator<DioService>());
}
