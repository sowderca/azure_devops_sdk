import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReleaseGates
void main() {
  var instance = ReleaseGates();

  group('test ReleaseGates', () {
    // Contains the gates job details of each evaluation.
    // List<DeploymentJob> deploymentJobs (default value: [])
    test('to test the property `deploymentJobs`', () async {
      // TODO
    });

    // ID of release gates.
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // List of ignored gates.
    // List<IgnoredGate> ignoredGates (default value: [])
    test('to test the property `ignoredGates`', () async {
      // TODO
    });

    // Gates last modified time.
    // DateTime lastModifiedOn (default value: null)
    test('to test the property `lastModifiedOn`', () async {
      // TODO
    });

    // Run plan ID of the gates.
    // String runPlanId (default value: null)
    test('to test the property `runPlanId`', () async {
      // TODO
    });

    // Gates stabilization completed date and time.
    // DateTime stabilizationCompletedOn (default value: null)
    test('to test the property `stabilizationCompletedOn`', () async {
      // TODO
    });

    // Gates evaluation started time.
    // DateTime startedOn (default value: null)
    test('to test the property `startedOn`', () async {
      // TODO
    });

    // Status of release gates.
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Date and time at which all gates executed successfully.
    // DateTime succeedingSince (default value: null)
    test('to test the property `succeedingSince`', () async {
      // TODO
    });


  });

}
