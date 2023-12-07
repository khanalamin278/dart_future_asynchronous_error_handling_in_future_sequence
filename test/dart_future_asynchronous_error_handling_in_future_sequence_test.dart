import 'package:dart_future_asynchronous_error_handling_in_future_sequence/dart_future_asynchronous_error_handling_in_future_sequence.dart';
import 'package:test/test.dart';

void main() {
  test('handleErrorsAsync processes futures and handles errors', () async {
    var futures = [
      Future.value(1),
      Future.error(Exception('Error')),
      Future.value(2),
    ];
    var results = await handleErrorsAsync(futures);
    expect(results, equals([1, -1, 2]));
  });

  test('handleErrorsAsync returns an empty list for an empty input', () async {
    var results = await handleErrorsAsync([]);
    expect(results, isEmpty);
  });
}
