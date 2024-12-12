// lib/features/news/data/repositories/news_repository_impl.dart

import 'package:dartz/dartz.dart';
import 'package:newsapp/core/errors/exceptions.dart';
import 'package:newsapp/core/errors/failures.dart';
import 'package:newsapp/features/news/data/datasources/news_remote_data_source.dart';
import 'package:newsapp/features/news/domain/entities/news_entity.dart';
import 'package:newsapp/features/news/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;

  NewsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<NewsEntity>>> getTopHeadlines(String query) async {
    try {
      final news = await remoteDataSource.getTopHeadlines(query);
      return Right(news);
    } on ServerException {
      return Left(ServerFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
