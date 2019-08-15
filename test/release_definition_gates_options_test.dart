import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReleaseDefinitionGatesOptions
void main() {
  var instance = ReleaseDefinitionGatesOptions();

  group('test ReleaseDefinitionGatesOptions', () {
    // Gets or sets as the gates enabled or not.
    // bool isEnabled (default value: null)
    test('to test the property `isEnabled`', () async {
      // TODO
    });

    // Gets or sets the minimum duration for steady results after a successful gates evaluation.
    // int minimumSuccessDuration (default value: null)
    test('to test the property `minimumSuccessDuration`', () async {
      // TODO
    });

    // Gets or sets the time between re-evaluation of gates.
    // int samplingInterval (default value: null)
    test('to test the property `samplingInterval`', () async {
      // TODO
    });

    // Gets or sets the delay before evaluation.
    // int stabilizationTime (default value: null)
    test('to test the property `stabilizationTime`', () async {
      // TODO
    });

    // Gets or sets the timeout after which gates fail.
    // int timeout (default value: null)
    test('to test the property `timeout`', () async {
      // TODO
    });


  });

}
