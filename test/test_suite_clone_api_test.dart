import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TestSuiteCloneApi
void main() {
  var instance = TestSuiteCloneApi();

  group('tests for TestSuiteCloneApi', () {
    // Get clone information.
    //
    //Future<CloneTestSuiteOperationInformation> callGet(String organization, String project, int cloneOperationId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Clone test suite
    //
    //Future<CloneTestSuiteOperationInformation> clone Test Suite(String organization, String project, String apiVersion, CloneTestSuiteParams body, { bool deepClone }) async 
    test('test clone Test Suite', () async {
      // TODO
    });

  });
}
