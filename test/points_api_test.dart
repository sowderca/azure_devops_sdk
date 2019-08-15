import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PointsApi
void main() {
  var instance = PointsApi();

  group('tests for PointsApi', () {
    // Get a test point.
    //
    //Future<TestPoint> get Point(String organization, String project, int planId, int suiteId, int pointIds, String apiVersion, { String witFields }) async 
    test('test get Point', () async {
      // TODO
    });

    // Get test points using query.
    //
    //Future<TestPointsQuery> get Points By Query(String organization, String project, String apiVersion, TestPointsQuery body, { int $skip, int $top }) async 
    test('test get Points By Query', () async {
      // TODO
    });

    // Get a list of test points.
    //
    //Future<List<TestPoint>> list(String organization, String project, int planId, int suiteId, String apiVersion, { String witFields, String configurationId, String testCaseId, String testPointIds, bool includePointDetails, int $skip, int $top }) async 
    test('test list', () async {
      // TODO
    });

    // Update test points.
    //
    //Future<List<TestPoint>> update(String organization, String project, int planId, int suiteId, String pointIds, String apiVersion, PointUpdateModel body) async 
    test('test update', () async {
      // TODO
    });

  });
}
