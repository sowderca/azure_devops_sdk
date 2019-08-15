import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for CommentIterationContext
void main() {
  var instance = CommentIterationContext();

  group('test CommentIterationContext', () {
    // The iteration of the file on the left side of the diff when the thread was created. If this value is equal to SecondComparingIteration, then this version is the common commit between the source and target branches of the pull request.
    // int firstComparingIteration (default value: null)
    test('to test the property `firstComparingIteration`', () async {
      // TODO
    });

    // The iteration of the file on the right side of the diff when the thread was created.
    // int secondComparingIteration (default value: null)
    test('to test the property `secondComparingIteration`', () async {
      // TODO
    });


  });

}
