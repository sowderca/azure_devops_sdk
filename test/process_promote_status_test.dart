import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ProcessPromoteStatus
void main() {
  var instance = ProcessPromoteStatus();

  group('test ProcessPromoteStatus', () {
    // Number of projects for which promote is complete.
    // int complete (default value: null)
    test('to test the property `complete`', () async {
      // TODO
    });

    // ID of the promote operation.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // The error message associated with the promote operation. The string will be empty if there are no errors.
    // String message (default value: null)
    test('to test the property `message`', () async {
      // TODO
    });

    // Number of projects for which promote is pending.
    // int pending (default value: null)
    test('to test the property `pending`', () async {
      // TODO
    });

    // The remaining retries.
    // int remainingRetries (default value: null)
    test('to test the property `remainingRetries`', () async {
      // TODO
    });

    // True if promote finished all the projects successfully. False if still in progress or any project promote failed.
    // bool successful (default value: null)
    test('to test the property `successful`', () async {
      // TODO
    });


  });

}
