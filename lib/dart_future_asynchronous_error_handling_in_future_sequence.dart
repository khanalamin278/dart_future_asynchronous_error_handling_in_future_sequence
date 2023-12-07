/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_future_asynchronous_error_handling_in_future_sequence_base.dart';

/*
Practice Question 2: Asynchronous Error Handling in Future Sequence
Task:
Create a function handleErrorsAsync that takes a list 
of Future<int>. It processes each future and handles 
any errors by returning -1 for that specific future. 
The function should return a Future<List<int>> with the 
successful results or -1 in place of errors.
*/
import 'dart:async';

Future<List<int>> handleErrorsAsync(List<Future<dynamic>> futures) async {
  List<int> results = [];
  dynamic ans = 0;

  for (var future in futures) {
    // 1 ফিউচার লিস্ট এর লুপ চালানো হয়েছে।
    try {
      ans = await future;
      results.add(ans);
    } catch (e) {
      results.add(-1);
    }
  }

  return results;
}
