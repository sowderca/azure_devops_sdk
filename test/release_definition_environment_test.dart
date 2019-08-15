import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReleaseDefinitionEnvironment
void main() {
  var instance = ReleaseDefinitionEnvironment();

  group('test ReleaseDefinitionEnvironment', () {
    // Gets or sets the BadgeUrl. BadgeUrl will be used when Badge will be enabled in Release Definition Environment.
    // String badgeUrl (default value: null)
    test('to test the property `badgeUrl`', () async {
      // TODO
    });

    // Gets or sets the environment conditions.
    // List<Condition> conditions (default value: [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // ReleaseShallowReference currentRelease (default value: null)
    test('to test the property `currentRelease`', () async {
      // TODO
    });

    // Gets or sets the demands.
    // List<Demand> demands (default value: [])
    test('to test the property `demands`', () async {
      // TODO
    });

    // Gets or sets the deploy phases of environment.
    // List<DeployPhase> deployPhases (default value: [])
    test('to test the property `deployPhases`', () async {
      // TODO
    });

    // ReleaseDefinitionDeployStep deployStep (default value: null)
    test('to test the property `deployStep`', () async {
      // TODO
    });

    // EnvironmentOptions environmentOptions (default value: null)
    test('to test the property `environmentOptions`', () async {
      // TODO
    });

    // Gets or sets the triggers on environment.
    // List<EnvironmentTrigger> environmentTriggers (default value: [])
    test('to test the property `environmentTriggers`', () async {
      // TODO
    });

    // EnvironmentExecutionPolicy executionPolicy (default value: null)
    test('to test the property `executionPolicy`', () async {
      // TODO
    });

    // Gets and sets the ID of the ReleaseDefinitionEnvironment.
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Gets and sets the name of the ReleaseDefinitionEnvironment.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // IdentityRef owner (default value: null)
    test('to test the property `owner`', () async {
      // TODO
    });

    // ReleaseDefinitionApprovals postDeployApprovals (default value: null)
    test('to test the property `postDeployApprovals`', () async {
      // TODO
    });

    // ReleaseDefinitionGatesStep postDeploymentGates (default value: null)
    test('to test the property `postDeploymentGates`', () async {
      // TODO
    });

    // ReleaseDefinitionApprovals preDeployApprovals (default value: null)
    test('to test the property `preDeployApprovals`', () async {
      // TODO
    });

    // ReleaseDefinitionGatesStep preDeploymentGates (default value: null)
    test('to test the property `preDeploymentGates`', () async {
      // TODO
    });

    // ProcessParameters processParameters (default value: null)
    test('to test the property `processParameters`', () async {
      // TODO
    });

    // PropertiesCollection properties (default value: null)
    test('to test the property `properties`', () async {
      // TODO
    });

    // Gets or sets the queue ID.
    // int queueId (default value: null)
    test('to test the property `queueId`', () async {
      // TODO
    });

    // Gets and sets the rank of the ReleaseDefinitionEnvironment.
    // int rank (default value: null)
    test('to test the property `rank`', () async {
      // TODO
    });

    // EnvironmentRetentionPolicy retentionPolicy (default value: null)
    test('to test the property `retentionPolicy`', () async {
      // TODO
    });

    // Gets or sets the schedules
    // List<ReleaseSchedule> schedules (default value: [])
    test('to test the property `schedules`', () async {
      // TODO
    });

    // Gets or sets the variable groups.
    // List<int> variableGroups (default value: [])
    test('to test the property `variableGroups`', () async {
      // TODO
    });

    // Gets and sets the variables.
    // Map<String, ConfigurationVariableValue> variables (default value: {})
    test('to test the property `variables`', () async {
      // TODO
    });


  });

}
