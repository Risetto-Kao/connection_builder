import 'package:connection_builder/core/error/failure.dart';
import 'package:connection_builder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:connection_builder/features/number_trivia/domain/repositories_abstract/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
