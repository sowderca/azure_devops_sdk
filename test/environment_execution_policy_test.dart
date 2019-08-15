import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for EnvironmentExecutionPolicy
void main() {
  var instance = EnvironmentExecutionPolicy();

  group('test EnvironmentExecutionPolicy', () {
    // This policy decides, how many environments would be with Environment Runner.
    // int concurrencyCount (default value: null)
    test('to test the property `concurrencyCount`', () async {
      // TODO
    });

    // Queue depth in the EnvironmentQueue table, this table keeps the environment entries till Environment Runner is free [as per it's policy] to take another environment for running.
    // int queueDepthCount (default value: null)
    test('to test the property `queueDepthCount`', () async {
      // TODO
    });


  });

}
