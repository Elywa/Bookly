import 'package:bookley_app/core/utils/api_services.dart';
import 'package:bookley_app/features/home/data/data%20sources/home_local_data_source.dart';
import 'package:bookley_app/features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookley_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  // Register your services here
  locator.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      localDataSource: HomeLocalDataSourceImpl(),
      remoteDataSource: HomeRemoteDataSourceImple(
        api: locator.get<ApiServices>(),
      ),
    ),
  );
}
