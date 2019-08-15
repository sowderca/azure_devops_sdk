import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WorkItemTypesApi
void main() {
  var instance = WorkItemTypesApi();

  group('tests for WorkItemTypesApi', () {
    // Returns a work item type definition.
    //
    //Future<WorkItemType> callGet(String organization, String project, String type, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Returns a single work item type in a process.
    //
    //Future<ProcessWorkItemType> callGet_0(String organization, String processId, String witRefName, String apiVersion, { String $expand }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Creates a work item type in the process.
    //
    //Future<ProcessWorkItemType> create(String organization, String processId, String apiVersion, CreateProcessWorkItemTypeRequest body) async 
    test('test create', () async {
      // TODO
    });

    // Removes a work itewm type in the process.
    //
    //Future delete(String organization, String processId, String witRefName, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Returns the list of work item types
    //
    //Future<List<WorkItemType>> list(String organization, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Returns a list of all work item types in a process.
    //
    //Future<List<ProcessWorkItemType>> list_0(String organization, String processId, String apiVersion, { String $expand }) async 
    test('test list_0', () async {
      // TODO
    });

    // Updates a work item type of the process.
    //
    //Future<ProcessWorkItemType> update(String organization, String processId, String witRefName, String apiVersion, UpdateProcessWorkItemTypeRequest body) async 
    test('test update', () async {
      // TODO
    });

  });
}
