// lib/features/news/presentation/controllers/news_controller.dart

import 'package:get/get.dart';
import 'package:newsapp/core/errors/failures.dart';
import 'package:newsapp/core/utils/log.dart';
import 'package:newsapp/features/news/domain/entities/news_entity.dart';
import 'package:newsapp/features/news/domain/usecases/get_news_data.dart';


class NewsController extends GetxController {
  final GetNewsData getNewsData;

  NewsController({required this.getNewsData});

  var newsList = <NewsEntity>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchNews('bitcoin');
  }

  void fetchNews(String query) async {
    isLoading.value = true;
    final result = await getNewsData(Params(query: query));
    result.fold(
          (failure) {
        errorMessage.value = _mapFailureToMessage(failure);
        logError(errorMessage.value);
      },
          (news) {
        newsList.value = news;
      },
    );
    isLoading.value = false;
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server Failure';
    } else if (failure is CacheFailure) {
      return 'Cache Failure';
    } else {
      return 'Unexpected Error';
    }
  }
}
