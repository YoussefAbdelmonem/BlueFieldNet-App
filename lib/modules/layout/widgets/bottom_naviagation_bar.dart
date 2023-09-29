import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/dynamic_theme/colors.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/layout_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({required this.cubit});

  LayoutCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        decoration: BoxDecoration(
          color: AppColors.bottomNav,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navBarItem("assets/icons/post_a_job.svg", 'post a job'.tr(), 0),
            navBarItem(
                "assets/icons/notifications.svg", 'notifications'.tr(), 1),
            navBarItem("assets/icons/jobs.svg", "jobs".tr(), 2),
            navBarItem("assets/icons/messages.svg", 'messages'.tr(), 3),
          ],
        ));
  }

  Widget navBarItem(String path, String title, int index,
      {VoidCallback? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          cubit.changeTab(index);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SvgPicture.asset(
                path,
                color: cubit.tabController.index == index
                    ? AppColors.bottomNavActiveIcon
                    : AppColors.bottomNavIcon,
              ),
              SizedBox(
                height: 8,
              ),
              CustomText(
                title.tr(),
                color: cubit.tabController.index == index
                    ? AppColors.bottomNavActiveIcon
                    : AppColors.bottomNavIcon,
                fontsize: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
