import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for VariablegroupsApi
void main() {
  var instance = VariablegroupsApi();

  group('tests for VariablegroupsApi', () {
    // Add a variable group.
    //
    //Future<VariableGroup> add(String organization, String project, String apiVersion, VariableGroupParameters body) async 
    test('test add', () async {
      // TODO
    });

    // Get a variable group.
    //
    //Future<VariableGroup> callGet(String organization, String project, int groupId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Delete a variable group
    //
    //Future delete(String organization, String project, int groupId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Get variable groups by ids.
    //
    //Future<List<VariableGroup>> get Variable Groups By Id(String organization, String project, String groupIds, String apiVersion) async 
    test('test get Variable Groups By Id', () async {
      // TODO
    });

    // Update a variable group.
    //
    //Future<VariableGroup> update(String organization, String project, int groupId, String apiVersion, VariableGroupParameters body) async 
    test('test update', () async {
      // TODO
    });

  });
}
