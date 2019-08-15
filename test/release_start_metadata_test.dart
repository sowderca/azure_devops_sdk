import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReleaseStartMetadata
void main() {
  var instance = ReleaseStartMetadata();

  group('test ReleaseStartMetadata', () {
    // Sets list of artifact to create a release.
    // List<ArtifactMetadata> artifacts (default value: [])
    test('to test the property `artifacts`', () async {
      // TODO
    });

    // Sets definition Id to create a release.
    // int definitionId (default value: null)
    test('to test the property `definitionId`', () async {
      // TODO
    });

    // Sets description to create a release.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Sets list of environments meta data.
    // List<ReleaseStartEnvironmentMetadata> environmentsMetadata (default value: [])
    test('to test the property `environmentsMetadata`', () async {
      // TODO
    });

    // Sets 'true' to create release in draft mode, 'false' otherwise.
    // bool isDraft (default value: null)
    test('to test the property `isDraft`', () async {
      // TODO
    });

    // Sets list of environments to manual as condition.
    // List<String> manualEnvironments (default value: [])
    test('to test the property `manualEnvironments`', () async {
      // TODO
    });

    // PropertiesCollection properties (default value: null)
    test('to test the property `properties`', () async {
      // TODO
    });

    // Sets reason to create a release.
    // String reason (default value: null)
    test('to test the property `reason`', () async {
      // TODO
    });

    // Sets list of release variables to be overridden at deployment time.
    // Map<String, ConfigurationVariableValue> variables (default value: {})
    test('to test the property `variables`', () async {
      // TODO
    });


  });

}
