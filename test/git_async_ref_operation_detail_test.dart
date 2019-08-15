import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for GitAsyncRefOperationDetail
void main() {
  var instance = GitAsyncRefOperationDetail();

  group('test GitAsyncRefOperationDetail', () {
    // Indicates if there was a conflict generated when trying to cherry pick or revert the changes.
    // bool conflict (default value: null)
    test('to test the property `conflict`', () async {
      // TODO
    });

    // The current commit from the list of commits that are being cherry picked or reverted.
    // String currentCommitId (default value: null)
    test('to test the property `currentCommitId`', () async {
      // TODO
    });

    // Detailed information about why the cherry pick or revert failed to complete.
    // String failureMessage (default value: null)
    test('to test the property `failureMessage`', () async {
      // TODO
    });

    // A number between 0 and 1 indicating the percent complete of the operation.
    // double progress (default value: null)
    test('to test the property `progress`', () async {
      // TODO
    });

    // Provides a status code that indicates the reason the cherry pick or revert failed.
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Indicates if the operation went beyond the maximum time allowed for a cherry pick or revert operation.
    // bool timedout (default value: null)
    test('to test the property `timedout`', () async {
      // TODO
    });


  });

}
