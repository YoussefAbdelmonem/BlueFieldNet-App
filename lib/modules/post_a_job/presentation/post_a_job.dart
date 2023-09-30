import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_description_widget.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_title_widget.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
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
                        "Post A Job",
                        color: AppColors.font,
                        fontFamily: "Sans",
                        fontsize: 16,
                        weight: FontWeight.w600,
                      ),
                      Spacer(),
                    ],
                  ),
                  16.ph,
                  TextFormFieldWidget(
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/search.svg",
                      alignment: Alignment.center,
                      fit: BoxFit.none,
                    ),
                    hintText: "Search for job",
                  ),
                  16.ph,
                  JobDescriptionWidget()
                ],
              ),
            ),
          ),
        )));
  }
}
