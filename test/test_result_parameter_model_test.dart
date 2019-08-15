import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TestResultParameterModel
void main() {
  var instance = TestResultParameterModel();

  group('test TestResultParameterModel', () {
    // Test step path where parameter is referenced.
    // String actionPath (default value: null)
    test('to test the property `actionPath`', () async {
      // TODO
    });

    // Iteration ID.
    // int iterationId (default value: null)
    test('to test the property `iterationId`', () async {
      // TODO
    });

    // Name of parameter.
    // String parameterName (default value: null)
    test('to test the property `parameterName`', () async {
      // TODO
    });

    // This is step Id of test case. For shared step, it is step Id of shared step in test case workitem; step Id in shared step. Example: TestCase workitem has two steps: 1) Normal step with Id = 1 2) Shared Step with Id = 2. Inside shared step: a) Normal Step with Id = 1 Value for StepIdentifier for First step: \"1\" Second step: \"2;1\"
    // String stepIdentifier (default value: null)
    test('to test the property `stepIdentifier`', () async {
      // TODO
    });

    // Url of test parameter.
    // String url (default value: null)
    test('to test the property `url`', () async {
      // TODO
    });

    // Value of parameter.
    // String value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
