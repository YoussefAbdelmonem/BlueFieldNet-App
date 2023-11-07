import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/modules/notifications/cubit/states.dart';
import 'package:bluefieldnet/shared/widgets/loadinganderror.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NotificationsCubit()..getNotifications(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 16.ph,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     CircleAvatar(
                    //         backgroundImage: NetworkImage(
                    //             "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                    //     Spacer(),
                    //     CustomText(
                    //       "Notifications",
                    //       color: AppColors.font,
                    //       fontFamily: "Sans",
                    //       fontsize: 16,
                    //       weight: FontWeight.w600,
                    //     ),
                    //     Spacer(),
                    //   ],
                    // ),
                    16.ph,
                    JobDefinitionRow(
                        title: "Notifications", image: "assets/icons/noti.svg"),
                    16.ph,
                    // const CustomText(
                    //   "Today",
                    //   fontsize: 24,
                    //   color: Color(0xFF20384B),
                    //   fontFamily: "Sans",
                    //   weight: FontWeight.w700,
                    // ),
                    16.ph,
                    Expanded(
                      child:
                          BlocConsumer<NotificationsCubit, NotificationsStates>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          final cubit = NotificationsCubit.get(context);
                          return RefreshIndicator(
                            onRefresh: () async {
                              await cubit.getNotifications();
                            },
                            child: LoadingAndError(
                              isError: state is NotificationsError,
                              isLoading: state is NotificationsLoading,
                              child: ListView.builder(
                                itemBuilder: (_, index) {
                                  final item =
                                      cubit.notificationsModel?.data?[index];
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Container(
                                      color: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SvgPicture.asset(
                                          //   "assets/icons/x.svg",
                                          //   color: Colors.black,
                                          // ),
                                          16.ph,
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                  backgroundImage: Image.asset(
                                                'user'.png("icons"),
                                                width: 70,
                                                height: 70,
                                                fit: BoxFit.cover,
                                                color: AppColors.primary,
                                              ).image),
                                              10.pw,
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                        maxWidth:
                                                            context.width *
                                                                0.73),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomText(
                                                          item?.data?.title ??
                                                              "",
                                                          fontsize: 14,
                                                          color:
                                                              Color(0xFF20384B),
                                                          fontFamily: "Sans",
                                                          weight:
                                                              FontWeight.w500,
                                                        ),
                                                        CustomText(
                                                          item?.data
                                                                  ?.createdAt ??
                                                              "",
                                                          fontsize: 10,
                                                          color:
                                                              Color(0xFF5E84A3),
                                                          fontFamily: "Roboto",
                                                          weight:
                                                              FontWeight.w400,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  8.ph,
                                                  CustomText(
                                                    item?.data?.text ?? "",
                                                    fontsize: 9,
                                                    color: Color(0xFF334D64),
                                                    fontFamily: "Roboto",
                                                    weight: FontWeight.w400,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          8.ph,
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                itemCount:
                                    cubit.notificationsModel?.data?.length,
                                // physics: NeverScrollableScrollPhysics(),
                                // shrinkWrap: true,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //  32.ph,
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
