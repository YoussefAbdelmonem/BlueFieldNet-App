import 'package:flutter/material.dart';

import '../../../../../shared/widgets/customtext.dart';

class SavedJobsTab extends StatelessWidget {
  const SavedJobsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:SafeArea(child:Column(
          children: [
            CustomText(
              "Saved Jobs",
            )
          ],
        ))

    );
  }
}
