import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PlansApi
void main() {
  var instance = PlansApi();

  group('tests for PlansApi', () {
    // Get the information for the specified plan
    //
    //Future<Plan> callGet(String organization, String project, String id, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Add a new plan for the team
    //
    //Future<Plan> create(String organization, String project, String apiVersion, CreatePlan body) async 
    test('test create', () async {
      // TODO
    });

    // Delete the specified plan
    //
    //Future delete(String organization, String project, String id, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get the information for all the plans configured for the given team
    //
    //Future<List<Plan>> list(String organization, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Update the information for the specified plan
    //
    //Future<Plan> update(String organization, String project, String id, String apiVersion, UpdatePlan body) async 
    test('test update', () async {
      // TODO
    });

  });
}
