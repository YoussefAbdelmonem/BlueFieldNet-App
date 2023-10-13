import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
///// put it in routes 
///  import '../../modules/profile/presentation/profile.dart';
/// static const String profileScreen = "/profileScreen";
//  case Routes.profileScreen:
        // return CupertinoPageRoute(
        //     settings: routeSettings,
        //     builder: (_) {
        //       return const ProfileScreen();
        //     });
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  ProfileCubit(),
      child:Container()
    );
    
    
  }
}
