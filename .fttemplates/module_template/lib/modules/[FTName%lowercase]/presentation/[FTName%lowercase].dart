import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
///// put it in routes 
///  import '../../modules/<FTName | lowercase>/presentation/<FTName | lowercase>.dart';
/// static const String <FTName | pascalcase>Screen = "/<FTName | camelcase>Screen";
//  case Routes./<FTName | camelcase>Screen:
        // return CupertinoPageRoute(
        //     settings: routeSettings,
        //     builder: (_) {
        //       return const <FTName | pascalcase>Screen();
        //     });
class <FTName | pascalcase>Screen extends StatefulWidget {
  const <FTName | pascalcase>Screen({Key? key}) : super(key: key);

  @override
  State<<FTName | pascalcase>Screen> createState() => _<FTName | pascalcase>ScreenState();
}

class _<FTName | pascalcase>ScreenState extends State<<FTName | pascalcase>Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  <FTName | pascalcase>Cubit(),
      child:Container()
    );
    
    
  }
}
