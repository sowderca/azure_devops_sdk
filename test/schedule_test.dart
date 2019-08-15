import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for Schedule
void main() {
  var instance = Schedule();

  group('test Schedule', () {
    // List<String> branchFilters (default value: [])
    test('to test the property `branchFilters`', () async {
      // TODO
    });

    // Days for a build (flags enum for days of the week)
    // String daysToBuild (default value: null)
    test('to test the property `daysToBuild`', () async {
      // TODO
    });

    // The Job Id of the Scheduled job that will queue the scheduled build. Since a single trigger can have multiple schedules and we want a single job to process a single schedule (since each schedule has a list of branches to build), the schedule itself needs to define the Job Id. This value will be filled in when a definition is added or updated.  The UI does not provide it or use it.
    // String scheduleJobId (default value: null)
    test('to test the property `scheduleJobId`', () async {
      // TODO
    });

    // Flag to determine if this schedule should only build if the associated source has been changed.
    // bool scheduleOnlyWithChanges (default value: null)
    test('to test the property `scheduleOnlyWithChanges`', () async {
      // TODO
    });

    // Local timezone hour to start
    // int startHours (default value: null)
    test('to test the property `startHours`', () async {
      // TODO
    });

    // Local timezone minute to start
    // int startMinutes (default value: null)
    test('to test the property `startMinutes`', () async {
      // TODO
    });

    // Time zone of the build schedule (String representation of the time zone ID)
    // String timeZoneId (default value: null)
    test('to test the property `timeZoneId`', () async {
      // TODO
    });


  });

}
