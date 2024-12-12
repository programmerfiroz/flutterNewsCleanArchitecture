// lib/core/usecases/usecase.dart

import 'package:dartz/dartz.dart';
import 'package:newsapp/core/errors/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
