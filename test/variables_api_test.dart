import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for VariablesApi
void main() {
  var instance = VariablesApi();

  group('tests for VariablesApi', () {
    // Get a test variable by its ID.
    //
    //Future<TestVariable> callGet(String organization, String project, int testVariableId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create a test variable.
    //
    //Future<TestVariable> create(String organization, String project, String apiVersion, TestVariableCreateUpdateParameters body) async 
    test('test create', () async {
      // TODO
    });

    // Delete a test variable by its ID.
    //
    //Future delete(String organization, String project, int testVariableId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get a list of test variables.
    //
    //Future<List<TestVariable>> list(String organization, String project, String apiVersion, { String continuationToken }) async 
    test('test list', () async {
      // TODO
    });

    // Update a test variable by its ID.
    //
    //Future<TestVariable> update(String organization, String project, int testVariableId, String apiVersion, TestVariableCreateUpdateParameters body) async 
    test('test update', () async {
      // TODO
    });

  });
}
