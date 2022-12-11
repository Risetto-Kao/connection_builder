import 'package:connection_builder/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:connection_builder/features/number_trivia/domain/repositories_abstract/number_trivia_repository.dart';
import 'package:connection_builder/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  var tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "test", number: tNumber);

  test('should get trivia for the number from the repo', () async {
    // arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => Right(tNumberTrivia)); // right means success

    // act
    final result = await usecase.execute(number: tNumber);
    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
