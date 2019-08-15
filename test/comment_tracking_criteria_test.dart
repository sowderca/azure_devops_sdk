import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for CommentTrackingCriteria
void main() {
  var instance = CommentTrackingCriteria();

  group('test CommentTrackingCriteria', () {
    // The iteration of the file on the left side of the diff that the thread will be tracked to. Threads were tracked if this is greater than 0.
    // int firstComparingIteration (default value: null)
    test('to test the property `firstComparingIteration`', () async {
      // TODO
    });

    // Original filepath the thread was created on before tracking. This will be different than the current thread filepath if the file in question was renamed in a later iteration.
    // String origFilePath (default value: null)
    test('to test the property `origFilePath`', () async {
      // TODO
    });

    // CommentPosition origLeftFileEnd (default value: null)
    test('to test the property `origLeftFileEnd`', () async {
      // TODO
    });

    // CommentPosition origLeftFileStart (default value: null)
    test('to test the property `origLeftFileStart`', () async {
      // TODO
    });

    // CommentPosition origRightFileEnd (default value: null)
    test('to test the property `origRightFileEnd`', () async {
      // TODO
    });

    // CommentPosition origRightFileStart (default value: null)
    test('to test the property `origRightFileStart`', () async {
      // TODO
    });

    // The iteration of the file on the right side of the diff that the thread will be tracked to. Threads were tracked if this is greater than 0.
    // int secondComparingIteration (default value: null)
    test('to test the property `secondComparingIteration`', () async {
      // TODO
    });


  });

}
