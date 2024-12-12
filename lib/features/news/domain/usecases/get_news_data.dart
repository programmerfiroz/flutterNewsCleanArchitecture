// lib/features/news/domain/usecases/get_news_data.dart

import 'package:dartz/dartz.dart';
import 'package:newsapp/core/errors/failures.dart';
import 'package:newsapp/core/usecases/usecase.dart';
import 'package:newsapp/features/news/domain/entities/news_entity.dart';
import 'package:newsapp/features/news/domain/repositories/news_repository.dart';

class GetNewsData implements UseCase<List<NewsEntity>, Params> {
  final NewsRepository repository;

  GetNewsData(this.repository);

  @override
  Future<Either<Failure, List<NewsEntity>>> call(Params params) async {
    return await repository.getTopHeadlines(params.query);
  }
}

class Params {
  final String query;

  Params({required this.query});
}
