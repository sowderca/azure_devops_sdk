import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WorkItemTypesBehaviorsApi
void main() {
  var instance = WorkItemTypesBehaviorsApi();

  group('tests for WorkItemTypesBehaviorsApi', () {
    // Adds a behavior to the work item type of the process.
    //
    //Future<WorkItemTypeBehavior> add(String organization, String processId, String witRefNameForBehaviors, String apiVersion, WorkItemTypeBehavior body) async 
    test('test add', () async {
      // TODO
    });

    // Returns a behavior for the work item type of the process.
    //
    //Future<WorkItemTypeBehavior> callGet(String organization, String processId, String witRefNameForBehaviors, String behaviorRefName, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Returns a list of all behaviors for the work item type of the process.
    //
    //Future<List<WorkItemTypeBehavior>> list(String organization, String processId, String witRefNameForBehaviors, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Removes a behavior for the work item type of the process.
    //
    //Future remove Behavior From Work Item Type(String organization, String processId, String witRefNameForBehaviors, String behaviorRefName, String apiVersion) async 
    test('test remove Behavior From Work Item Type', () async {
      // TODO
    });

    // Updates a behavior for the work item type of the process.
    //
    //Future<WorkItemTypeBehavior> update(String organization, String processId, String witRefNameForBehaviors, String apiVersion, WorkItemTypeBehavior body) async 
    test('test update', () async {
      // TODO
    });

  });
}
