import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/dashboard/dashboard_widget.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/payment/payment_widget.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/user_setting/user_settings.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>  with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: (3), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  ProfileCubit(),
      child:Scaffold(
        
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                16.ph,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                    Spacer(),
                    CustomText(
                      "Profile",
                      color: AppColors.font,
                      fontFamily: "Sans",
                      fontsize: 16,
                      weight: FontWeight.w600,
                    ),
                    Spacer(),
                  ],
                ),
                16.ph,

                TabBar(
                    padding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.only(
                      bottom: 6,
                      top: 6,
                      left: 1,
                      right: 1,
                    ),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.red ,
                    onTap: (index)  {
                      setState(() {
                        controller.animateTo(index);
                      });
                    },
                    indicator: BoxDecoration(
                      color: AppColors.tabBarColor,
                      border: Border.all(
                          color: AppColors.tabBarColor,

                          width: 1.5),

                      borderRadius: BorderRadius.circular(4),


                    ),
                    controller: controller,
                    tabs: [


                      Tab(
                        child: CustomText(
                          'Payment',
                          fontsize: 12,
                          fontFamily: "Sans",
                          color: controller.index == 0? AppColors.whiteBackground : AppColors.tabBarColorUnSelected,
                          weight: controller.index == 0? FontWeight.w700 : FontWeight.w400,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          'User Setting',
                          fontsize: 12,
                          fontFamily: "Sans",
                          weight: controller.index == 1? FontWeight.w700 : FontWeight.w400,
                          color: controller.index == 1? AppColors.whiteBackground : AppColors.tabBarColorUnSelected,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          'Dashboard',
                          fontsize: 12,
                          fontFamily: "Sans",
                          weight: controller.index == 2? FontWeight.w700 : FontWeight.w400,
                          color: controller.index == 2? AppColors.whiteBackground : AppColors.tabBarColorUnSelected,
                        ),
                      ),
                    ]),
                Expanded(
                    child: TabBarView(
                      controller: controller,
                      children: const [
                        PaymentProfileWidget(),
                        UserSettingsProfileWidget(),
                        DashBoardProfileWidget(),

                      ],
                    )
                )
              ],
            ),
          ),
        ),
      )
    );
    
    
  }
}
