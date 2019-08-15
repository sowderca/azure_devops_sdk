import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReleaseSchedule
void main() {
  var instance = ReleaseSchedule();

  group('test ReleaseSchedule', () {
    // Days of the week to release.
    // String daysToRelease (default value: null)
    test('to test the property `daysToRelease`', () async {
      // TODO
    });

    // Team Foundation Job Definition Job Id.
    // String jobId (default value: null)
    test('to test the property `jobId`', () async {
      // TODO
    });

    // Flag to determine if this schedule should only release if the associated artifact has been changed or release definition changed.
    // bool scheduleOnlyWithChanges (default value: null)
    test('to test the property `scheduleOnlyWithChanges`', () async {
      // TODO
    });

    // Local time zone hour to start.
    // int startHours (default value: null)
    test('to test the property `startHours`', () async {
      // TODO
    });

    // Local time zone minute to start.
    // int startMinutes (default value: null)
    test('to test the property `startMinutes`', () async {
      // TODO
    });

    // Time zone Id of release schedule, such as 'UTC'.
    // String timeZoneId (default value: null)
    test('to test the property `timeZoneId`', () async {
      // TODO
    });


  });

}
