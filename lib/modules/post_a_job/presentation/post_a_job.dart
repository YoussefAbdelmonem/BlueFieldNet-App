import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class PostAJobScreen extends StatefulWidget {
  const PostAJobScreen({Key? key}) : super(key: key);

  @override
  State<PostAJobScreen> createState() => _PostAJobScreenState();
}

class _PostAJobScreenState extends State<PostAJobScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PostAJobCubit(),
        child: Scaffold(
            body: SafeArea(
          child: Center(
            child: Column(
              children: [CustomText("PostAJobScreen")],
            ),
          ),
        )));
  }
}
