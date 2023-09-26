import 'endpoints.dart';

import '../model/<FTName | lowercase>_model.dart';
import '../../../../core/data_source/dio.dart';

  //put it in locators locator.registerLazySingleton(() => <FTName | pascalcase>Repository(locator<DioService>()));

class <FTName | pascalcase>Repository{
final  DioService dioService ;
  <FTName | pascalcase>Repository(this.dioService);
}
