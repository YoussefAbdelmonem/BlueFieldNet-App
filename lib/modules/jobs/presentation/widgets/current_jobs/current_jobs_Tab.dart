import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/my_active_jobs/my_active_job_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/widgets/customtext.dart';

class CurrentJobsTab extends StatelessWidget {
  const CurrentJobsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:SafeArea(child:Column(
     children: [
       16.ph,
       Expanded(
         child: Navigator(
           key: Utils.app2Nav,
           onGenerateRoute: RouteGenerator.getJobsNestedRoute,
           initialRoute: Routes.MyActiveJobWidget,
         ),
       ),
       // MyActiveJobWidget()/
     ],
    ))

    );
  }
}
