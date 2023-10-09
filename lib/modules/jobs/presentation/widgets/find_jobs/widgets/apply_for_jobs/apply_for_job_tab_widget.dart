import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/apply_for_jobs/widgets/item_card.dart';
import 'package:flutter/material.dart';

class ApplyForJobsFindJobTabWidget extends StatelessWidget {
  const ApplyForJobsFindJobTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return AppliedItemCardWidget();
          },
          itemCount: 2,


          shrinkWrap: true,
        )
      ],
    );
  }
}
