import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<ChatMessage> messages = [
      ChatMessage(
          messageContent: "Hello, Will",
          messageType: "receiver",
          textColor: Colors.black),
      ChatMessage(
          messageContent: "How have you been?",
          messageType: "receiver",
          textColor: Colors.black),
      ChatMessage(
          messageContent: "Hey Kriss, I am doing fine dude. wbu?",
          messageType: "sender",
          textColor: Colors.white),
      ChatMessage(
          messageContent: "ehhhh, doing OK.",
          messageType: "receiver",
          textColor: Colors.black),
      ChatMessage(
          messageContent: "Is there any thing wrong?",
          messageType: "sender",
          textColor: Colors.white),
    ];
    return BlocProvider(
        create: (context) => MessagesCubit(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*    16.ph,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                          Spacer(),
                          CustomText(
                            "Messages",
                            color: AppColors.font,
                            fontFamily: "Sans",
                            fontsize: 16,
                            weight: FontWeight.w600,
                          ),
                          Spacer(),
                        ],
                      ),
                     */
                      16.ph,
                      JobDefinitionRow(
                          title: "Inbox", image: "assets/icons/inbox.svg"),
                      16.ph,
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              "messages",
                              fontsize: 20,
                              weight: FontWeight.w700,
                            ),
                            ListView.builder(
                              itemCount: messages.length,
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14, top: 10, bottom: 10),
                                  child: Align(
                                    alignment: (messages[index].messageType ==
                                            "receiver"
                                        ? Alignment.topLeft
                                        : Alignment.topRight),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: (messages[index].messageType ==
                                                "receiver"
                                            ? Color(0xffF5F5F5)
                                            : AppColors.primaryColor),
                                      ),
                                      padding: EdgeInsets.all(16),
                                      child: CustomText(
                                        messages[index].messageContent,
                                        color: messages[index].textColor,
                                        fontsize: 16,
                                        weight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            16.ph,
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 48,
                                vertical: 8,
                              ),
                              child: ButtonWidget(
                                height: 40,
                                onTap: () {
                                  Alerts.dialog(context,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 24, horizontal: 16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomText(
                                                  "Send Message",
                                                  fontFamily: "Sans",
                                                  fontsize: 24,
                                                  color: AppColors.font,
                                                  weight: FontWeight.w700,
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      // Navigator.pop();
                                                    },
                                                    icon: SvgPicture.asset(
                                                        "assets/icons/x.svg"))
                                              ],
                                            ),
                                            8.ph,
                                            CustomText(
                                              "message for adam ahmed",
                                              fontFamily: "Sans",
                                              fontsize: 20,
                                              color: AppColors.font,
                                              weight: FontWeight.w400,
                                            ),
                                            8.ph,
                                            TextFormFieldWidget(
                                              maxLines: 4,
                                              minLines: 3,
                                              hintText: "Type Here",
                                              backgroundColor:
                                                  Colors.grey.shade200,
                                              activeBorderColor: Colors.white,
                                            ),
                                            16.ph,
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  ButtonWidget(
                                                    width: 130,
                                                    height: 40,
                                                    borderColor: AppColors
                                                        .buttonBorderColor,
                                                    withBorder: false,
                                                    buttonColor: Colors.white,
                                                    textColor: AppColors
                                                        .buttonBorderColor,
                                                    title: "Close",
                                                    onTap: () {
                                                      // Navigator.pop(context);
                                                    },
                                                  ),
                                                  ButtonWidget(
                                                    width: 130,
                                                    height: 40,
                                                    onTap: () {
                                                      // Navigator.pushNamed(context, Routes.CompleteContactWidget);
                                                    },
                                                    title: "Send",
                                                    buttonColor:
                                                        AppColors.buttonColor,
                                                  ),
                                                ])
                                          ],
                                        ),
                                      ));
                                },
                                title: "Send Message",
                                fontSize: 20,
                                fontweight: FontWeight.w600,
                                fontFamily: "Roboto",
                              ),
                            )
                          ],
                        ),
                      ),
                      32.ph,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  Color? textColor;

  ChatMessage(
      {required this.messageContent,
      required this.messageType,
      this.textColor});
}
