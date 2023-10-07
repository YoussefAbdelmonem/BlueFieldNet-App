import 'package:flutter/material.dart';

import '../../../../../shared/widgets/customtext.dart';

class CurrentJobsTab extends StatelessWidget {
  const CurrentJobsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:SafeArea(child:Column(
     children: [
       CustomText(
         "Current Jobs",
       )
     ],
    ))

    );
  }
}
