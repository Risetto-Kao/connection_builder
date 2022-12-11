import 'package:connection_builder/core/error/failure.dart';
import 'package:connection_builder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
// todo: dart-import vscode extension for relative path

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int? number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
