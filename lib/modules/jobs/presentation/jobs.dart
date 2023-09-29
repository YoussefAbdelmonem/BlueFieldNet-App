import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => JobsCubit(),
        child: Scaffold(
            body: SafeArea(
          child: Center(
            child: Column(
              children: [CustomText("JobsScreen")],
            ),
          ),
        )));
  }
}
