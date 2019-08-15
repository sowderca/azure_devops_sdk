import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ReorderOperation
void main() {
  var instance = ReorderOperation();

  group('test ReorderOperation', () {
    // IDs of the work items to be reordered.  Must be valid WorkItem Ids.
    // List<int> ids (default value: [])
    test('to test the property `ids`', () async {
      // TODO
    });

    // IterationPath for reorder operation. This is only used when we reorder from the Iteration Backlog
    // String iterationPath (default value: null)
    test('to test the property `iterationPath`', () async {
      // TODO
    });

    // ID of the work item that should be after the reordered items. Can use 0 to specify the end of the list.
    // int nextId (default value: null)
    test('to test the property `nextId`', () async {
      // TODO
    });

    // Parent ID for all of the work items involved in this operation. Can use 0 to indicate the items don't have a parent.
    // int parentId (default value: null)
    test('to test the property `parentId`', () async {
      // TODO
    });

    // ID of the work item that should be before the reordered items. Can use 0 to specify the beginning of the list.
    // int previousId (default value: null)
    test('to test the property `previousId`', () async {
      // TODO
    });


  });

}
