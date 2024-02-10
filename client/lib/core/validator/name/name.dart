import 'package:client/core/validator/value_failure/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Name extends Equatable {
  factory Name(String name) => Name._(_validateName(name));
  const Name._(this.value);
  final Either<ValueFailure, String> value;

  @override
  List<Object> get props => [value];
}

Either<ValueFailure, String> _validateName(String input) {
  if (input.isEmpty) {
    return left(
      ValueFailure.emptyValue(failedValue: input),
    );
  }

  if (input.length < 3) {
    return left(
      ValueFailure.shortInput(failedValue: input),
    );
  }

  return right(input);
}
