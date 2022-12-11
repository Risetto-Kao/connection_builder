import 'package:dartz/dartz_streaming.dart';
import 'package:equatable/equatable.dart';

// note: not need to be test, because without logic
// todo: check if this class is valid
class NumberTrivia extends Equatable {
  final String text;
  final int number;

  const NumberTrivia({required this.text, required this.number});

  @override
  // TODO: implement props
  List<Object?> get props => [text, number];
}
