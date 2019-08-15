import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for StatesApi
void main() {
  var instance = StatesApi();

  group('tests for StatesApi', () {
    // Returns a single state definition in a work item type of the process.
    //
    //Future<WorkItemStateResultModel> callGet(String organization, String processId, String witRefName, String stateId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Creates a state definition in the work item type of the process.
    //
    //Future<WorkItemStateResultModel> create(String organization, String processId, String witRefName, String apiVersion, WorkItemStateInputModel body) async 
    test('test create', () async {
      // TODO
    });

    // Removes a state definition in the work item type of the process.
    //
    //Future delete(String organization, String processId, String witRefName, String stateId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Hides a state definition in the work item type of the process.Only states with customizationType:System can be hidden.
    //
    //Future<WorkItemStateResultModel> hide State Definition(String organization, String processId, String witRefName, String stateId, String apiVersion, HideStateModel body) async 
    test('test hide State Definition', () async {
      // TODO
    });

    // Returns a list of all state definitions in a work item type of the process.
    //
    //Future<List<WorkItemStateResultModel>> list(String organization, String processId, String witRefName, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Updates a given state definition in the work item type of the process.
    //
    //Future<WorkItemStateResultModel> update(String organization, String processId, String witRefName, String stateId, String apiVersion, WorkItemStateInputModel body) async 
    test('test update', () async {
      // TODO
    });

  });
}
