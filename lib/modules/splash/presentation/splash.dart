import 'package:animated_widgets_flutter/animated_widgets.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theme/dynamic_theme/colors.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (context) => SplashCubit(),
        child: BlocConsumer<SplashCubit, SplashStates>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = SplashCubit.get(context);
            return Center(
              child: OpacityAnimatedWidget.tween(
                opacityEnabled: 1,
                opacityDisabled: 0,
                duration: const Duration(milliseconds: 3000),
                enabled: true,
                animationFinished: (finished) async {
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, await cubit.checkLogin(), (route) => false);
                },
                child: SvgPicture.asset(
                  "logo".svg('icons'),
                  // width: 200,
                  // height: 250,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
