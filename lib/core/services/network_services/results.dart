import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/failure.dart';

part 'results.freezed.dart';

@Freezed()
abstract class Results<T> with _$Results<T> {
  const factory Results.success(T data) = SuccessResults<T>;
  const factory Results.failure(Failure failure) = FailureResults<T>;
}
