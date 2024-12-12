// lib/core/bindings/initial_binding.dart

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:newsapp/core/network/network_info.dart';
import 'package:newsapp/features/news/data/datasources/news_remote_data_source.dart';
import 'package:newsapp/features/news/data/repositories/news_repository_impl.dart';
import 'package:newsapp/features/news/domain/repositories/news_repository.dart';
import 'package:newsapp/features/news/domain/usecases/get_news_data.dart';
import 'package:newsapp/features/news/presentation/controllers/news_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';


class InitialBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    // External dependencies
    Get.lazyPut<http.Client>(() => http.Client());
    Get.lazyPut(() => Connectivity());
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.put<SharedPreferences>(sharedPreferences);

    // Core dependencies
    Get.lazyPut<NetworkInfo>(() => NetworkInfoImpl(Get.find<Connectivity>()));

    // News Feature
    Get.lazyPut<NewsRemoteDataSource>(() => NewsRemoteDataSourceImpl(client: Get.find<http.Client>()));
    Get.lazyPut<NewsRepository>(() => NewsRepositoryImpl(remoteDataSource: Get.find<NewsRemoteDataSource>()));
    Get.lazyPut<GetNewsData>(() => GetNewsData(Get.find<NewsRepository>()));
    Get.lazyPut<NewsController>(() => NewsController(getNewsData: Get.find<GetNewsData>()));
  }
}

