import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../modules/auth/domain/model/auth_model.dart';
import '../data_source/PrefService.dart';
import '../data_source/local_hive.dart';
import '../helpers/media.dart';
import 'Locator.dart';

class Utils {
  static PrefService pref() => locator<PrefService>();

  static String token = '';
  static String lang = '';
  static String FCMToken = '';
  static String userType = "";
  static UserModel userModel = UserModel();
  static GlobalKey<NavigatorState> navigatorKey() =>
      locator<GlobalKey<NavigatorState>>();
  static Media get myMedia => locator<Media>();
  static GlobalKey<NavigatorState> app1Nav = GlobalKey();
  static GlobalKey<NavigatorState> app2Nav = GlobalKey();
  static Validation get valid => locator<Validation>();
  static DataManager get dataManager => locator<DataManager>();
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static saveUserInHive(Map<String, dynamic> response) async {
    userModel = UserModel.fromJson(response);
    token = userModel.token ?? '';
    await Utils.dataManager.saveUser(Map<String, dynamic>.from(response));
  }

  static setToken(String token) {
    Utils.token = token;
    pref().userToken = token;
  }

  static removeToken() {
    token = "";
    pref().userToken = "";
  }

  static getToken() {
    token = pref().userToken;
  }

  static void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }
}

extension MySLiverBox on Widget {
  // SliverToBoxAdapter get SliverBox => SliverToBoxAdapter(
  //   child: this,
  // );
  /*  SliverToBoxAdapter get SliverBoxAnimation => SliverToBoxAdapter(
    child: Padding(
      padding:  EdgeInsets.all(16),
      child: this,
    ),
  ); */
}
