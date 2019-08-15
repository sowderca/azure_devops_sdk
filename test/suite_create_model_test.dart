import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for SuiteCreateModel
void main() {
  var instance = SuiteCreateModel();

  group('test SuiteCreateModel', () {
    // Name of test suite.
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // For query based suites, query string that defines the suite.
    // String queryString (default value: null)
    test('to test the property `queryString`', () async {
      // TODO
    });

    // For requirements test suites, the IDs of the requirements.
    // List<int> requirementIds (default value: [])
    test('to test the property `requirementIds`', () async {
      // TODO
    });

    // Type of test suite to create. It can have value from DynamicTestSuite, StaticTestSuite and RequirementTestSuite.
    // String suiteType (default value: null)
    test('to test the property `suiteType`', () async {
      // TODO
    });


  });

}
