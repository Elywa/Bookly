import 'package:bookley_app/core/utils/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, param> {
  Future<Either<Failures, Type>> call([param param]);
}
