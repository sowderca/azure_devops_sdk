import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SuiteTestCaseApi
void main() {
  var instance = SuiteTestCaseApi();

  group('tests for SuiteTestCaseApi', () {
    // Add test cases to a suite with specified configurations
    //
    //Future<List<TestCase>> add(String organization, String project, int planId, int suiteId, String apiVersion, List<SuiteTestCaseCreateUpdateParameters> body) async 
    test('test add', () async {
      // TODO
    });

    // Get Test Cases For a Suite.
    //
    //Future<List<TestCase>> get Test Case(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion, { String witFields, bool returnIdentityRef }) async 
    test('test get Test Case', () async {
      // TODO
    });

    // Get Test Case List return those test cases which have all the configuration Ids as mentioned in the optional paramter. If configuration Ids is null, it return all the test cases
    //
    //Future<List<TestCase>> get Test Case List(String organization, String project, int planId, int suiteId, String apiVersion, { String testIds, String configurationIds, String witFields, String continuationToken, bool returnIdentityRef, bool expand }) async 
    test('test get Test Case List', () async {
      // TODO
    });

    // Removes test cases from a suite based on the list of test case Ids provided.
    //
    //Future remove Test Cases From Suite(String organization, String project, int planId, int suiteId, String testCaseIds, String apiVersion) async 
    test('test remove Test Cases From Suite', () async {
      // TODO
    });

    // Update the configurations for test cases
    //
    //Future<List<TestCase>> update(String organization, String project, int planId, int suiteId, String apiVersion, List<SuiteTestCaseCreateUpdateParameters> body) async 
    test('test update', () async {
      // TODO
    });

  });
}
