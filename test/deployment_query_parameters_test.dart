import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DeploymentQueryParameters
void main() {
  var instance = DeploymentQueryParameters();

  group('test DeploymentQueryParameters', () {
    // Query deployments based specified artifact source id.
    // String artifactSourceId (default value: null)
    test('to test the property `artifactSourceId`', () async {
      // TODO
    });

    // Query deployments based specified artifact type id.
    // String artifactTypeId (default value: null)
    test('to test the property `artifactTypeId`', () async {
      // TODO
    });

    // Query deployments based specified artifact versions.
    // List<String> artifactVersions (default value: [])
    test('to test the property `artifactVersions`', () async {
      // TODO
    });

    // Query deployments number of deployments per environment.
    // int deploymentsPerEnvironment (default value: null)
    test('to test the property `deploymentsPerEnvironment`', () async {
      // TODO
    });

    // Query deployment based on deployment status.
    // String deploymentStatus (default value: null)
    test('to test the property `deploymentStatus`', () async {
      // TODO
    });

    // Query deployments of specified environments.
    // List<DefinitionEnvironmentReference> environments (default value: [])
    test('to test the property `environments`', () async {
      // TODO
    });

    // Query deployments based specified expands.
    // String expands (default value: null)
    test('to test the property `expands`', () async {
      // TODO
    });

    // Specify deleted deployments should return or not.
    // bool isDeleted (default value: null)
    test('to test the property `isDeleted`', () async {
      // TODO
    });

    // Query deployment based on deployment operation status.
    // String operationStatus (default value: null)
    test('to test the property `operationStatus`', () async {
      // TODO
    });

    // Query deployments based query type.
    // String queryType (default value: null)
    test('to test the property `queryType`', () async {
      // TODO
    });

    // Query deployments based specified source branch.
    // String sourceBranch (default value: null)
    test('to test the property `sourceBranch`', () async {
      // TODO
    });


  });

}
