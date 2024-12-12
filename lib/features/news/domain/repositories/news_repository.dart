// lib/features/news/domain/repositories/news_repository.dart

import 'package:dartz/dartz.dart';
import 'package:newsapp/core/errors/failures.dart';
import 'package:newsapp/features/news/domain/entities/news_entity.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<NewsEntity>>> getTopHeadlines(String query);
}
