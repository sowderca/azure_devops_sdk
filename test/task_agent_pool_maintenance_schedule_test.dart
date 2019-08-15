import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TaskAgentPoolMaintenanceSchedule
void main() {
  var instance = TaskAgentPoolMaintenanceSchedule();

  group('test TaskAgentPoolMaintenanceSchedule', () {
    // Days for a build (flags enum for days of the week)
    // String daysToBuild (default value: null)
    test('to test the property `daysToBuild`', () async {
      // TODO
    });

    // The Job Id of the Scheduled job that will queue the pool maintenance job.
    // String scheduleJobId (default value: null)
    test('to test the property `scheduleJobId`', () async {
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

    // Time zone of the build schedule (string representation of the time zone id)
    // String timeZoneId (default value: null)
    test('to test the property `timeZoneId`', () async {
      // TODO
    });


  });

}
