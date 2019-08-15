import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TimelineTeamData
void main() {
  var instance = TimelineTeamData();

  group('test TimelineTeamData', () {
    // BacklogLevel backlog (default value: null)
    test('to test the property `backlog`', () async {
      // TODO
    });

    // The field reference names of the work item data
    // List<String> fieldReferenceNames (default value: [])
    test('to test the property `fieldReferenceNames`', () async {
      // TODO
    });

    // The id of the team
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Was iteration and work item data retrieved for this team. <remarks> Teams with IsExpanded false have not had their iteration, work item, and field related data queried and will never contain this data. If true then these items are queried and, if there are items in the queried range, there will be data. </remarks>
    // bool isExpanded (default value: null)
    test('to test the property `isExpanded`', () async {
      // TODO
    });

    // The iteration data, including the work items, in the queried date range.
    // List<TimelineTeamIteration> iterations (default value: [])
    test('to test the property `iterations`', () async {
      // TODO
    });

    // The name of the team
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // The order by field name of this team
    // String orderByField (default value: null)
    test('to test the property `orderByField`', () async {
      // TODO
    });

    // The field reference names of the partially paged work items, such as ID, WorkItemType
    // List<String> partiallyPagedFieldReferenceNames (default value: [])
    test('to test the property `partiallyPagedFieldReferenceNames`', () async {
      // TODO
    });

    // The project id the team belongs team
    // String projectId (default value: null)
    test('to test the property `projectId`', () async {
      // TODO
    });

    // TimelineTeamStatus status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // The team field default value
    // String teamFieldDefaultValue (default value: null)
    test('to test the property `teamFieldDefaultValue`', () async {
      // TODO
    });

    // The team field name of this team
    // String teamFieldName (default value: null)
    test('to test the property `teamFieldName`', () async {
      // TODO
    });

    // The team field values
    // List<TeamFieldValue> teamFieldValues (default value: [])
    test('to test the property `teamFieldValues`', () async {
      // TODO
    });

    // Colors for the work item types.
    // List<WorkItemColor> workItemTypeColors (default value: [])
    test('to test the property `workItemTypeColors`', () async {
      // TODO
    });


  });

}
