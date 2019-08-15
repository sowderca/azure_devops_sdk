import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TestSuitesApi
void main() {
  var instance = TestSuitesApi();

  group('tests for TestSuitesApi', () {
    // Add test cases to suite.
    //
    //Future<List<SuiteTestCase>> add(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion) async 
    test('test add', () async {
      // TODO
    });

    // Get a specific test case in a test suite with test case id.
    //
    //Future<SuiteTestCase> callGet(String organization, String project, int planId, int suiteId, int testCaseIds, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get test suite by suite id.
    //
    //Future<TestSuite> callGet_0(String organization, String project, int planId, int suiteId, String apiVersion, { String expand }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Create test suite.
    //
    //Future<TestSuite> create(String organization, String project, int planId, String apiVersion, TestSuiteCreateParams body) async 
    test('test create', () async {
      // TODO
    });

    // Delete test suite.
    //
    //Future delete(String organization, String project, int planId, int suiteId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Find the list of all test suites in which a given test case is present. This is helpful if you need to find out which test suites are using a test case, when you need to make changes to a test case.
    //
    //Future<List<TestSuite>> get Suites By Test Case Id(String organization, int testCaseId, String apiVersion) async 
    test('test get Suites By Test Case Id', () async {
      // TODO
    });

    // Get test suites for plan.
    //
    //Future<List<TestSuite>> get Test Suites For Plan(String organization, String project, int planId, String apiVersion, { String expand, String continuationToken, bool asTreeView }) async 
    test('test get Test Suites For Plan', () async {
      // TODO
    });

    // Get all test cases in a suite.
    //
    //Future<List<SuiteTestCase>> list(String organization, String project, int planId, int suiteId, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // The test points associated with the test cases are removed from the test suite. The test case work item is not deleted from the system. See test cases resource to delete a test case permanently.
    //
    //Future remove Test Cases From Suite Url(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion) async 
    test('test remove Test Cases From Suite Url', () async {
      // TODO
    });

    // Updates the properties of the test case association in a suite.
    //
    //Future<List<SuiteTestCase>> update(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion, SuiteTestCaseUpdateModel body) async 
    test('test update', () async {
      // TODO
    });

    // Update test suite.
    //
    //Future<TestSuite> update_0(String organization, String project, int planId, int suiteId, String apiVersion, TestSuiteUpdateParams body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
