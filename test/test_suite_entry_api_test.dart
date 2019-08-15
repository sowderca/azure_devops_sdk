import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TestSuiteEntryApi
void main() {
  var instance = TestSuiteEntryApi();

  group('tests for TestSuiteEntryApi', () {
    // Get a list of test suite entries in the test suite.
    //
    //Future<List<SuiteEntry>> list(String organization, String project, int suiteId, String apiVersion, { String suiteEntryType }) async 
    test('test list', () async {
      // TODO
    });

    // Reorder test suite entries in the test suite.
    //
    //Future<List<SuiteEntry>> reorder Suite Entries(String organization, String project, int suiteId, String apiVersion, List<SuiteEntryUpdateParams> body) async 
    test('test reorder Suite Entries', () async {
      // TODO
    });

  });
}
