import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lit_libraryy/features/home/data/repos/home_repo_impl.dart';

import 'api_services.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiServices>()
  ));

// Alternatively you could write it if you don't like global variables
  //GetIt.I.registerSingleton<AppModel>(AppModel());
}
