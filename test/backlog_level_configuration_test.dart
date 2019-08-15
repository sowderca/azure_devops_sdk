import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for BacklogLevelConfiguration
void main() {
  var instance = BacklogLevelConfiguration();

  group('test BacklogLevelConfiguration', () {
    // List of fields to include in Add Panel
    // List<WorkItemFieldReference> addPanelFields (default value: [])
    test('to test the property `addPanelFields`', () async {
      // TODO
    });

    // Color for the backlog level
    // String color (default value: null)
    test('to test the property `color`', () async {
      // TODO
    });

    // Default list of columns for the backlog
    // List<BacklogColumn> columnFields (default value: [])
    test('to test the property `columnFields`', () async {
      // TODO
    });

    // WorkItemTypeReference defaultWorkItemType (default value: null)
    test('to test the property `defaultWorkItemType`', () async {
      // TODO
    });

    // Backlog Id (for Legacy Backlog Level from process config it can be categoryref name)
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Indicates whether the backlog level is hidden
    // bool isHidden (default value: null)
    test('to test the property `isHidden`', () async {
      // TODO
    });

    // Backlog Name
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // Backlog Rank (Taskbacklog is 0)
    // int rank (default value: null)
    test('to test the property `rank`', () async {
      // TODO
    });

    // The type of this backlog level
    // String type (default value: null)
    test('to test the property `type`', () async {
      // TODO
    });

    // Max number of work items to show in the given backlog
    // int workItemCountLimit (default value: null)
    test('to test the property `workItemCountLimit`', () async {
      // TODO
    });

    // Work Item types participating in this backlog as known by the project/Process, can be overridden by team settings for bugs
    // List<WorkItemTypeReference> workItemTypes (default value: [])
    test('to test the property `workItemTypes`', () async {
      // TODO
    });


  });

}
