import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/user_setting/widgets/contact_info/contact_info_widget.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/user_setting/widgets/my_profile/my_profile_widget.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/user_setting/widgets/password/password_widget.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/user_setting/widgets/profile_settings/profile_settings_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class UserSettingsProfileWidget extends StatefulWidget {
  const UserSettingsProfileWidget({super.key});

  @override
  State<UserSettingsProfileWidget> createState() => _UserSettingsProfileWidgetState();
}

class _UserSettingsProfileWidgetState extends State<UserSettingsProfileWidget>  with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: (4), vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DefinitionRow(title: "user setting",isDone: false,),
            16.ph,
            8.ph,
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(
                          left: 16,
                        ),
                        indicator: BoxDecoration(),
                        unselectedLabelColor: Colors.grey,
                        onTap: (index) {
                          print(tabController.index);
                          setState(() {
                            tabController.animateTo(index);
                          });
                        },
                        controller: tabController,
                        tabs: [
                          Tab(
                            child: CustomText(
                              'contact info',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 0
                                  ? AppColors.font
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'my profile',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 1
                                  ? AppColors.font
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'profile setting',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 2
                                  ? AppColors.font
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'password&security',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 3
                                  ? AppColors.font
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                        ]),
                    8.ph,
                    Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            ContactInfoUserSettingWidget(),
                            MyProfileUserSettingsWidget(),
                            ProfileSettingUserSettingWidget(),
                            PasswordAndSecurityUserSetting(),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}