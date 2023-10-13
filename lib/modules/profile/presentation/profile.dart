import 'package:animated_widgets_flutter/animated_widgets.dart';
import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theme/dynamic_theme/colors.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (context) => ProfileCubit(),
        child: BlocConsumer<ProfileCubit, ProfileStates>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = ProfileCubit.get(context);
            return Container();
          },
        ),
      ),
    );
  }
}
