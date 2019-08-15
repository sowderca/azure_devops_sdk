import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for DeploymentInput
void main() {
  var instance = DeploymentInput();

  group('test DeploymentInput', () {
    // Gets or sets the job condition.
    // String condition (default value: null)
    test('to test the property `condition`', () async {
      // TODO
    });

    // Gets or sets the job cancel timeout in minutes for deployment which are cancelled by user for this release environment.
    // int jobCancelTimeoutInMinutes (default value: null)
    test('to test the property `jobCancelTimeoutInMinutes`', () async {
      // TODO
    });

    // Gets or sets the override inputs.
    // Map<String, String> overrideInputs (default value: {})
    test('to test the property `overrideInputs`', () async {
      // TODO
    });

    // Gets or sets the job execution timeout in minutes for deployment which are queued against this release environment.
    // int timeoutInMinutes (default value: null)
    test('to test the property `timeoutInMinutes`', () async {
      // TODO
    });


  });

}
