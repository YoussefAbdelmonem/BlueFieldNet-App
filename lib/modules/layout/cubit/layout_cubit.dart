import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);

  late TabController tabController;
  initTabBar(  vsync) {
    tabController = TabController(
        length: 4, vsync: vsync, initialIndex:  0);
  }
  animateTO(int screenNum) {
    tabController.animateTo(screenNum);
    emit(HomeLayoutChangeScreenState());
  }

  void changeTab(int tab) {
    switch (tab) {
      case 0:
        tabController.animateTo(0);
        break;
      case 1:
        tabController.animateTo(1);
        break;
      case 2:
        tabController.animateTo(2);
        break;
        case 3:
      tabController.animateTo(3);
      break;
      default:
    }
    emit(HomeLayoutChangeScreenState());
  }
}

