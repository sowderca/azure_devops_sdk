import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TestPointApi
void main() {
  var instance = TestPointApi();

  group('tests for TestPointApi', () {
    // Get a list of points based on point Ids provided.
    //
    //Future<List<TestPoint>> get Points(String organization, String project, int planId, int suiteId, String pointIds, String apiVersion, { bool returnIdentityRef }) async 
    test('test get Points', () async {
      // TODO
    });

    // Get all the points inside a suite based on some filters
    //
    //Future<List<TestPoint>> get Points List(String organization, String project, int planId, int suiteId, String apiVersion, { String testPointIds, String testCaseId, String continuationToken, bool returnIdentityRef, bool includePointDetails }) async 
    test('test get Points List', () async {
      // TODO
    });

    // Update Test Points. This is used to Reset test point to active, update the outcome of a test point or update the tester of a test point
    //
    //Future<List<TestPoint>> update(String organization, String project, int planId, int suiteId, String apiVersion, List<TestPointUpdateParams> body) async 
    test('test update', () async {
      // TODO
    });

  });
}
