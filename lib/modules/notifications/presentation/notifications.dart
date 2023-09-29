import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NotificationsCubit(),
        child: Scaffold(
            body: SafeArea(
          child: Center(
            child: Column(
              children: [CustomText("NotificationsScreen")],
            ),
          ),
        )));
  }
}
