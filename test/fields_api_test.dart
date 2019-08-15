import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for FieldsApi
void main() {
  var instance = FieldsApi();

  group('tests for FieldsApi', () {
    // Adds a field to a work item type.
    //
    //Future<ProcessWorkItemTypeField> add(String organization, String processId, String witRefName, String apiVersion, AddProcessWorkItemTypeFieldRequest body) async 
    test('test add', () async {
      // TODO
    });

    // Gets information on a specific field.
    //
    //Future<WorkItemField> callGet(String organization, String fieldNameOrRefName, String project, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Returns a field in a work item type.
    //
    //Future<ProcessWorkItemTypeField> callGet_0(String organization, String processId, String witRefName, String fieldRefName, String apiVersion) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Create a new field.
    //
    //Future<WorkItemField> create(String organization, String project, String apiVersion, WorkItemField body) async 
    test('test create', () async {
      // TODO
    });

    // Deletes the field.
    //
    //Future delete(String organization, String fieldNameOrRefName, String project, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Returns information for all fields.
    //
    //Future<List<WorkItemField>> list(String organization, String project, String apiVersion, { String $expand }) async 
    test('test list', () async {
      // TODO
    });

    // Returns a list of all fields in a work item type.
    //
    //Future<List<ProcessWorkItemTypeField>> list_0(String organization, String processId, String witRefName, String apiVersion) async 
    test('test list_0', () async {
      // TODO
    });

    // Removes a field from a work item type. Does not permanently delete the field.
    //
    //Future remove Work Item Type Field(String organization, String processId, String witRefName, String fieldRefName, String apiVersion) async 
    test('test remove Work Item Type Field', () async {
      // TODO
    });

    // Updates a field in a work item type.
    //
    //Future<ProcessWorkItemTypeField> update(String organization, String processId, String witRefName, String fieldRefName, String apiVersion, UpdateProcessWorkItemTypeFieldRequest body) async 
    test('test update', () async {
      // TODO
    });

  });
}
