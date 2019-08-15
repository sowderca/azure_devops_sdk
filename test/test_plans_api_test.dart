import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TestPlansApi
void main() {
  var instance = TestPlansApi();

  group('tests for TestPlansApi', () {
    // Get a test plan by Id.
    //
    //Future<TestPlan> callGet(String organization, String project, int planId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a test plan.
    //
    //Future<TestPlan> create(String organization, String project, String apiVersion, TestPlanCreateParams body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a test plan.
    //
    //Future delete(String organization, String project, int planId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of test plans
    //
    //Future<List<TestPlan>> list(String organization, String project, String apiVersion, { String owner, String continuationToken, bool includePlanDetails, bool filterActivePlans }) async 
    test('test list', () async {
      // TODO
    });

    // Update a test plan.
    //
    //Future<TestPlan> update(String organization, String project, int planId, String apiVersion, TestPlanUpdateParams body) async 
    test('test update', () async {
      // TODO
    });

  });
}
