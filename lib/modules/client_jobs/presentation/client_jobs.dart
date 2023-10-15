import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
///// put it in routes 
///  import '../../modules/client_jobs/presentation/client_jobs.dart';
/// static const String client_jobsScreen = "/clientJobsScreen";
//  case Routes.client_jobsScreen:
        // return CupertinoPageRoute(
        //     settings: routeSettings,
        //     builder: (_) {
        //       return const ClientJobsScreen();
        //     });
class ClientJobsScreen extends StatefulWidget {
  const ClientJobsScreen({Key? key}) : super(key: key);

  @override
  State<ClientJobsScreen> createState() => _ClientJobsScreenState();
}

class _ClientJobsScreenState extends State<ClientJobsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  ClientJobsCubit(),
      child:Container()
    );
    
    
  }
}
