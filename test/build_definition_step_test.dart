import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for BuildDefinitionStep
void main() {
  var instance = BuildDefinitionStep();

  group('test BuildDefinitionStep', () {
    // Indicates whether this step should run even if a previous step fails.
    // bool alwaysRun (default value: null)
    test('to test the property `alwaysRun`', () async {
      // TODO
    });

    // A condition that determines whether this step should run.
    // String condition (default value: null)
    test('to test the property `condition`', () async {
      // TODO
    });

    // Indicates whether the phase should continue even if this step fails.
    // bool continueOnError (default value: null)
    test('to test the property `continueOnError`', () async {
      // TODO
    });

    // The display name for this step.
    // String displayName (default value: null)
    test('to test the property `displayName`', () async {
      // TODO
    });

    // Indicates whether the step is enabled.
    // bool enabled (default value: null)
    test('to test the property `enabled`', () async {
      // TODO
    });

    // Map<String, String> environment (default value: {})
    test('to test the property `environment`', () async {
      // TODO
    });

    // Map<String, String> inputs (default value: {})
    test('to test the property `inputs`', () async {
      // TODO
    });

    // The reference name for this step.
    // String refName (default value: null)
    test('to test the property `refName`', () async {
      // TODO
    });

    // TaskDefinitionReference task (default value: null)
    test('to test the property `task`', () async {
      // TODO
    });

    // The time, in minutes, that this step is allowed to run.
    // int timeoutInMinutes (default value: null)
    test('to test the property `timeoutInMinutes`', () async {
      // TODO
    });


  });

}
